from PIL import Image
import sys
import os

def image_to_coe(image_path, target_width=None):
    """
    Convert an image to a 12-bit RGB (.coe) file for FPGA memory initialization.
    Output file will be named <input_name>_12bit.coe

    Parameters:
        image_path (str): Input image file path (.png, .jpg, etc.)
        target_width (int): Desired image width (resizes proportionally)
    """
    # === Load image ===
    img = Image.open(image_path).convert("RGB")
    width, height = img.size

    # === Resize if width specified ===
    if target_width is not None:
        aspect_ratio = height / width
        new_height = int(target_width * aspect_ratio)
        img = img.resize((target_width, new_height))
        width, height = img.size
        print(f"📏 Resized image to {width}x{height}")

    # === Convert to 12-bit RGB (RGB444) ===
    pixels = list(img.getdata())
    data_12bit = []

    for (r, g, b) in pixels:
        r4 = r >> 4
        g4 = g >> 4
        b4 = b >> 4
        rgb12 = (r4 << 8) | (g4 << 4) | b4
        data_12bit.append(rgb12)

    # === Build output file name ===
    base_name = os.path.splitext(os.path.basename(image_path))[0]
    output_path = f"{base_name}_{width}x{height}_12bit.coe"

    # === Write COE file ===
    with open(output_path, "w") as f:
        f.write("memory_initialization_radix=16;\n")
        f.write("memory_initialization_vector=\n")

        for i, val in enumerate(data_12bit):
            hex_val = format(val, "03X")  # 3 hex digits for 12 bits
            if i < len(data_12bit) - 1:
                f.write(f"{hex_val},\n")
            else:
                f.write(f"{hex_val};\n")

    print(f"✅ COE file generated: {output_path}")
    print(f"🖼️ Image size: {width} x {height} ({len(data_12bit)} pixels)")


# === Example usage ===
if __name__ == "__main__":
    # Example: python image_to_coe.py image.png 128
    if len(sys.argv) < 2:
        print("Usage: python image_to_coe.py <image_path> [width]")
        sys.exit(1)

    image_path = sys.argv[1]
    target_width = int(sys.argv[2]) if len(sys.argv) > 2 else None

    image_to_coe(image_path, target_width)
