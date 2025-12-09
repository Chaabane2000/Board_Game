import wave
import sys
import struct
from pydub import AudioSegment
import numpy as np # Import numpy for generating audio data

# Function to create a dummy WAV file
def create_dummy_wav(filename, duration_seconds=1, sample_rate=11000):
    n_frames = int(sample_rate * duration_seconds)
    # Generate a simple sine wave for dummy audio (8-bit unsigned PCM)
    frequency = 440  # A4 note
    t = np.linspace(0, duration_seconds, n_frames, endpoint=False)
    amplitude = 100 # Max amplitude for 8-bit unsigned is 255, center around 128
    data = (amplitude * np.sin(2 * np.pi * frequency * t) + 128).astype(np.uint8)

    with wave.open(filename, 'wb') as wf:
        wf.setnchannels(1)  # Mono
        wf.setsampwidth(1)  # 8-bit samples
        wf.setframerate(sample_rate)
        wf.writeframes(data.tobytes())
    print(f"Dummy WAV file '{filename}' created successfully.")

def convert_audio_to_mem(input_filename, output_filename, file_format='wav'):
    try:
        print(f"Processing: {input_filename} (Format: {file_format.upper()})")

        byte_list = []

        if file_format == 'wav':
            # Open the wav file
            with wave.open(input_filename, 'rb') as wav_file:
                # Get params
                n_channels = wav_file.getnchannels()
                sampwidth = wav_file.getsampwidth()
                framerate = wav_file.getframerate()
                n_frames = wav_file.getnframes()

                print(f"Original WAV properties - Channels: {n_channels}, Width: {sampwidth*8}bit, Rate: {framerate}Hz")

                if n_channels > 1 or sampwidth != 1:
                    print("Warning: For FPGA compatibility, WAV files strictly require Mono, 8-bit Unsigned PCM.")
                    print("Please use Audacity or similar to convert your audio to: WAV (Microsoft) -> Unsigned 8-bit PCM")
                    # For now, we will proceed with the data as is, but future enhancement could enforce this.
                    # Or pydub could be used to convert WAV to desired format if it's not already.
                    # For this subtask, we assume the WAV is 8-bit unsigned mono if not, it will be flagged.

                # Read all frames
                frames = wav_file.readframes(n_frames)
                byte_list = list(frames)

        elif file_format == 'mp3':
            # Load the MP3 file
            audio = AudioSegment.from_mp3(input_filename)

            # Convert to mono
            audio = audio.set_channels(1)

            # Convert to 8-bit samples (pydub produces signed 8-bit PCM)
            audio = audio.set_sample_width(1)

            # Extract raw audio data as bytes
            raw_mp3_frames = audio.raw_data

            print(f"Converted MP3 properties - Channels: {audio.channels}, Width: {audio.sample_width*8}bit, Rate: {audio.frame_rate}Hz")

            # Convert signed 8-bit PCM to unsigned 8-bit PCM
            # The original script expects unsigned 8-bit data.
            # Each byte 'b' from 'raw_mp3_frames' (signed -128 to 127)
            # should be transformed to (b + 128) % 256 (unsigned 0 to 255).
            byte_list = [(b + 128) % 256 for b in raw_mp3_frames]

        else:
            raise ValueError(f"Unsupported file format: {file_format}. Only 'wav' and 'mp3' are supported.")

        # We need to ensure we don't exceed FPGA Block RAM
        # Nexys A7-100T has ~4.8Mb BRAM.
        # 8-bit audio @ 32k samples/sec ~ 32KB/sec.
        # We pack 4 samples into one 32-bit word.

        # Open output file
        with open(output_filename, 'w') as mem_file:
            # Pad list to be divisible by 4
            initial_len = len(byte_list)
            while len(byte_list) % 4 != 0:
                byte_list.append(0)

            if initial_len != len(byte_list):
                print(f"Padded {len(byte_list) - initial_len} bytes to make data divisible by 4.")

            print(f"Writing {len(byte_list)//4} 32-bit words to {output_filename}...")

            for i in range(0, len(byte_list), 4):
                # Create 32-bit word
                # Little Endian packing based on user module
                b0 = byte_list[i]
                b1 = byte_list[i+1]
                b2 = byte_list[i+2]
                b3 = byte_list[i+3]

                # Format as hex string
                # Verilog fifo reads: duty[0] <= data[7:0]
                # So lowest byte is first sample
                combined = (b3 << 24) | (b2 << 16) | (b1 << 8) | b0

                mem_file.write(f"{combined:08X}\n")

        print("Done! Add .mem file to your Vivado project.")

    except Exception as e:
        print(f"Error processing {input_filename}: {e}")

if __name__ == "__main__":
    print("Usage: python convert_audio.py <input_audio_file> <output_mem_file> <format (wav/mp3)>")

    # Convert the dummy WAV to a dummy MP3 file
    # dummy_mp3_filename = "input_song.mp3"

    print("\n--- Demonstrating with the created WAV file ---")
    convert_audio_to_mem("game_music.wav", "music_data_wav.mem", 'wav')
    # print("\n--- Demonstrating with the created MP3 file ---")
    # convert_audio_to_mem(dummy_mp3_filename, "music_data_mp3.mem", 'mp3')