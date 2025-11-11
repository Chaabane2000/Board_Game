# -*- coding: utf-8 -*-
"""
Created on Sun Nov  2 11:26:27 2025

@author: mankaic
"""

from PIL import Image
import numpy as np

# Path to your generated file
filename = "collision_mask_output.txt"

# Read the file line by line
with open(filename, "r") as f:
    lines = [line.strip() for line in f.readlines() if line.strip()]

# Convert each line (string of '0'/'1') into list of ints
data = np.array([[int(c) for c in line] for line in lines], dtype=np.uint8)

# Convert to 0–255 grayscale (1 → white, 0 → black)
img = Image.fromarray(data * 255)

# Optional: flip vertically if you want Y=0 at bottom
# img = img.transpose(Image.FLIP_TOP_BOTTOM)

# Show the image
img.show()

# Optionally save it
img.save("collision_mask_output.png")
