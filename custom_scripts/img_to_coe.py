from PIL import Image
import sys
import os

def image_to_coe(image_path, target_width=None):
    """
    Convert an image to a 16-bit ARGB (.coe) file for FPGA memory initialization.
    Format: ARGB4444 (4 bits Alpha, 4 bits Red, 4 bits Green, 4 bits Blue).
    
    Output file will be named <input_name>_<width>x<height>_16bit.coe

    Parameters:
        image_path (str): Input image file path (.png, .jpg, etc.)
        target_width (int): Desired image width (resizes proportionally)
    """
    try:
        # === Load image as RGBA ===
        # Standard Pillow uses RGBA (Red, Green, Blue, Alpha)
        img = Image.open(image_path).convert("RGBA")
    except Exception as e:
        print(f"Error opening image: {e}")
        return

    width, height = img.size

    # === Resize if width specified ===
    if target_width is not None:
        aspect_ratio = height / width
        new_height = int(target_width * aspect_ratio)
        # Use Resampling.LANCZOS for high quality downscaling
        try:
            resample_filter = Image.Resampling.LANCZOS
        except AttributeError:
            resample_filter = Image.ANTIALIAS # Fallback for older Pillow versions
            
        img = img.resize((target_width, new_height), resample_filter)
        width, height = img.size
        print(f"📏 Resized image to {width}x{height}")

    # === Convert to 16-bit ARGB (ARGB4444) ===
    # PIL returns data as (R, G, B, A)
    pixels = list(img.getdata())
    data_16bit = []

    for (r, g, b, a) in pixels:
        # Downsample 8-bit channels (0-255) to 4-bit (0-15)
        a4 = a >> 4
        r4 = r >> 4
        g4 = g >> 4
        b4 = b >> 4
        
        # Pack into 16-bit integer: AAAA RRRR GGGG BBBB
        # Alpha is MSB (Most Significant Bits)
        argb16 = (a4 << 12) | (r4 << 8) | (g4 << 4) | (b4 << 0) 
        data_16bit.append(argb16)

    # === Build output file name ===
    base_name = os.path.splitext(os.path.basename(image_path))[0]
    output_path = f"{base_name}_{width}x{height}_16bit.coe"

    # === Write COE file ===
    try:
        with open(output_path, "w") as f:
            f.write("memory_initialization_radix=16;\n")
            f.write("memory_initialization_vector=\n")

            for i, val in enumerate(data_16bit):
                # Format as 4 Hex digits (16 bits), e.g., F0A3
                hex_val = format(val, "04X") 
                
                if i < len(data_16bit) - 1:
                    f.write(f"{hex_val},\n")
                else:
                    f.write(f"{hex_val};\n") # End with semicolon

        print(f"✅ COE file generated: {output_path}")
        print(f"🖼️ Image size: {width} x {height} ({len(data_16bit)} pixels)")
        print(f"ℹ️  Format: ARGB4444 (16-bit Hex)")
        
    except IOError as e:
        print(f"Error writing file: {e}")


# === Example usage ===
if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python image_to_coe_argb.py <image_path> [width]")
        sys.exit(1)

    image_path = sys.argv[1]
    target_width = int(sys.argv[2]) if len(sys.argv) > 2 else None

    image_to_coe(image_path, target_width)