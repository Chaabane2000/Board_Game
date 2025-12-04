# -*- coding: utf-8 -*-
"""
Created on Thu Dec  4 22:18:11 2025

@author: mankaic
"""

import numpy as np
from PIL import Image

# -----------------------------------------------------
# Change these to your actual values
WIDTH = 1280    # or 320 or 800 etc.
HEIGHT = 800
INPUT_FILE = "vga_output.txt"
OUTPUT_IMAGE = "output.png"
# -----------------------------------------------------

# Create empty image buffer
img = np.zeros((HEIGHT, WIDTH, 3), dtype=np.uint8)

with open(INPUT_FILE, "r") as f:
    for line in f:
        # Skip empty or incorrect lines
        parts = line.strip().split()
        if len(parts) != 5:
            continue
        
        x, y, r, g, b = map(int, parts)

        # Safety check: ignore pixels out of range
        if 0 <= x < WIDTH and 0 <= y < HEIGHT:
            img[y, x] = [r*17, g*17, b*17]

# Convert to image
image = Image.fromarray(img, "RGB")
image.save(OUTPUT_IMAGE)
image.show()

print("Image saved as", OUTPUT_IMAGE)
