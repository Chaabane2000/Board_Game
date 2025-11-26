# -*- coding: utf-8 -*-
"""
Created on Sun Nov  2 11:26:27 2025

@author: mankaic
"""
# This script creates binary masks out of images
# INPUT: Image to be converted into mask (Preferably color allowable area with white and prohibited area with black)
# OUTPUT: Binary matrix saved in .txt file
from PIL import Image
import matplotlib.pyplot as plt
import numpy as np

# === Load and preprocess image ===
img_name = "car_green_5"
img = Image.open(img_name + "_bw.png").convert("L").resize((30, 51))

# Convert to black & white (threshold at 128)
bw_img = img.point(lambda p: 255 if p > 128 else 0)

# Convert to numpy array
bw_array = np.array(bw_img)

# === Save binary mask (each line = 32 bits) ===
with open(img_name + "_mask.txt", "w") as f:
    for row in bw_array:
        line = ''.join(['1' if pixel > 0 else '0' for pixel in row])
        f.write(line + '\n')

print("✅ Saved mask.txt (32x32 binary) successfully!")

# === Display images ===
plt.figure(figsize=(6, 3))

plt.subplot(1, 2, 1)
plt.imshow(img, cmap="gray")
plt.title("Original 30x51 Grayscale")
plt.axis("off")

plt.subplot(1, 2, 2)
plt.imshow(bw_array, cmap="gray", vmin=0, vmax=255)
plt.title("Black & White Mask")
plt.axis("off")

plt.tight_layout()
plt.show()
