# Image Enhancement with MATLAB

This repository contains a MATLAB script for applying various image enhancement techniques, including median filtering, contrast enhancement using CLAHE, and gamma correction, to improve image quality. The script processes an input image and saves the enhanced results.

## Features

- **Median Filtering**:

  - Removes noise from the input image using a 3x3 median filter.
  - Supports both grayscale and RGB images.

- **Contrast Enhancement**:

  - Enhances image contrast using CLAHE (Contrast Limited Adaptive Histogram Equalization) on the luminance channel of the LAB color space.
  - Allows customization of clip limits and tile sizes for fine-tuned adjustments.

- **Gamma Correction**:

  - Brightens or darkens the image by applying gamma correction to the luminance channel.
  - Customizable gamma value for desired results.

- **LAB Color Space Processing**:

  - Converts images to and from LAB color space for targeted luminance adjustments.

- **Visualization**:
  - Displays the original image, median-filtered image, and enhanced images with both CLAHE and gamma correction methods.
  - Saves the enhanced images for further use.

## Requirements

To run the script, ensure you have the following software installed:

- MATLAB R2020b or later

## Usage

1. **Prepare Your Image**:

   - Place the input image (e.g., `image_03.png`) in the same directory as the script.

2. **Run the Script**:

   - Execute the script in MATLAB to process your image and view the results.

3. **Save Results**:
   - The script automatically saves the enhanced images as `enhanced_image.png` and `enhanced_image2.png`.

## Input Data

- The script processes a single image at a time.
- The input image should be in a supported format (e.g., PNG, JPEG) and should be noise-free for optimal results.

## Output

The script generates the following outputs:

- **Median Filtered Image**: Reduces noise in the input image.
- **CLAHE Enhanced Image**: Image with improved contrast saved as `enhanced_image.png`.
- **Gamma Corrected Image**: Brightened or darkened image saved as `enhanced_image2.png`.

## Example Workflow

1. **Input Image**:
   ![image](https://github.com/user-attachments/assets/e6c70cc3-11b3-4146-8e31-1e895d1e3667)

2. **Median Filtered Image**:
   ![image](https://github.com/user-attachments/assets/14a799a6-0483-4d83-aa97-ed182ebfe670)

3. **CLAHE Enhanced Image**:
   ![image](https://github.com/user-attachments/assets/e086b386-f8ab-421d-98c2-b484e62f5c4f)

4. **Gamma Corrected Image**:
   ![image](https://github.com/user-attachments/assets/2fe9dc74-bbf7-485b-8433-204b4929abd3)

## Customization

- **Median Filter Kernel Size**: Modify the `[3 3]` kernel size in the `medfilt2` function for different smoothing effects.
- **CLAHE Parameters**: Adjust `ClipLimit` and `NumTiles` in the `adapthisteq` function for different contrast enhancement effects.
- **Gamma Value**: Change the `gamma` value in the script to control the brightness or darkness of the output image.

---

## Author

**MEDPRG**  
[GitHub Profile](https://github.com/MEDPRG)
