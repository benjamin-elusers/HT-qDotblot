# HT-qDotblot

## Overview

**HT-qDotblot** is a high-throughput, quantitative dot blot method designed for the rapid and efficient analysis of protein expression levels. This protocol utilizes LICOR imaging technology to perform quantitative dot blotting on a 96-well plate format, allowing for simultaneous analysis of multiple samples. The method is particularly effective for detecting proteins of interest in yeast cell lysates using specific (anti-HA) and non-specific (HSP70) antibodies.

## Features

- **High-Throughput**: Analyze up to 96 samples in a single experiment.
- **Quantitative**: Utilize LICOR imaging for precise quantification of protein levels.
- **Versatile**: Compatible with various antibodies, including specific (anti-HA) and non-specific (HSP70) antibodies.
- **Efficient**: Reduced sample volume and reagent use compared to traditional blotting methods.
- **Automated Analysis**: Integrated scripts for data analysis and visualization.

## Getting Started

### Prerequisites

- **LICOR Imaging System**: Required for capturing and analyzing dot blot images.
- **Antibodies**: Anti-HA antibody for specific detection and HSP70 for non-specific detection.
- **Yeast Cell Lysate**: Preparation should be according to standard protocols.
- **96-Well Plate**: For sample application.
- **ImageJ Software**: Required for running the analysis script.

### Installation

Clone the repository:

\`\`\`bash
git clone https://github.com/yourusername/HT-qDotblot.git
cd HT-qDotblot
\`\`\`

Install required Python packages:

\`\`\`bash
pip install -r requirements.txt
\`\`\`

### Usage

1. **Prepare Samples**: Follow the protocol to prepare yeast cell lysates and load them into a 96-well plate.
2. **Dot Blot Setup**: Apply the samples to the membrane using a dot blot apparatus.
3. **Blocking and Antibody Incubation**: Block the membrane and incubate with primary antibodies (anti-HA and HSP70).
4. **Imaging**: Use the LICOR Imaging System to capture the dot blot image.
5. **Quantification**: Run the `quantify-dotblot.py` script using ImageJ to analyze the images and quantify protein expression levels.

### Example

To analyze your dot blot images, open ImageJ and run the script `quantify-dotblot.py`:

1. Open ImageJ.
2. Load your dot blot image into ImageJ.
3. Run the script `quantify-dotblot.py` through the ImageJ script editor.
4. Follow the on-screen instructions to set up the grid and measurement parameters.

## Data Analysis

The repository includes a script, `quantify-dotblot.py`, for automated data analysis using ImageJ:

- **Image Processing**: Convert dot blot images into quantitative data using Regions of Interest (ROIs).
- **Data Normalization**: Normalize expression levels against HSP70 as a loading control.
- **Visualization**: Generate plots to visualize protein expression levels across samples.

## Contributing

We welcome contributions from the community! Please fork the repository and submit a pull request for any improvements or bug fixes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- This method was developed at [Your Institution/Company].
- Special thanks to [Contributors/Collaborators].




# WellGridApp: Quantify 96-Well Dot Blot Application

WellGridApp is a PySide6-based desktop application designed for quantitative analysis of 96-well dot blot images. It allows you to define a grid over the wells of the blot image, measure pixel intensity values for each well, and export the measurements as a CSV file. This application can be highly useful in high-throughput screening studies and scientific experiments involving protein or nucleic acid blotting.

## Features

- Load and visualize 96-well dot blot images
- Define a grid by placing corners to align wells with the image
- Adjust grid position, size, circle size, and grid color
- Measure the intensity of each well and export the results as CSV
- Ability to zoom in/out and pan the image
- Save annotated images with grid overlays
- Load multiple images and switch between them for batch processing

## Installation

### Prerequisites

- Python 3.8+
- PySide6
- numpy
- opencv-python
- csv
- qt-material
- qtawesome

### Steps

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/WellGridApp.git
   cd WellGridApp
   ```

2. Install dependencies:
   ```
   pip install -r requirements.txt
   ```

3. Run the application:
   ```
   python wellgridapp.py
   ```

## Usage Tutorial

This step-by-step tutorial will guide you through using WellGridApp for analyzing your dot blot images.

### 1. Launch the App
After installation, run the app with `python wellgridapp.py`. The main window will appear with a sidebar, image display area, and measurement section.

### 2. Load an Image
Click the **Load Image** button on the left sidebar to load your dot blot image. Select the image file (e.g., .png, .jpg, .tif).

### 3. Adjust Saturation
Use the **Saturation Slider** to adjust the intensity saturation for better visualization. Move the slider left to lower the saturation or right to increase it.

### 4. Adjust Zoom
Click the **Zoom In** and **Zoom Out** buttons in the toolbar to zoom in and out on the image. You can also use the **Pan Tool** to navigate the zoomed-in image.

### 5. Define the Grid
Click **Define Grid** to enter grid definition mode.

1. Click on each of the three corners of your grid to place the grid on the blot image.
2. Use the **Position**, **Height**, **Width**, **Circle Size**, and **Color** options to adjust the grid as needed.
3. If you make a mistake, click **Cancel Grid Define** to reset and start the process again.

### 6. Measure the Grid
Click the **Measure Grid** button after setting the grid to measure intensity values for each well. The measurements (mean, median, standard deviation, etc.) will appear in the **Measurements Table**.

### 7. Save Measurements as CSV
Once measurements are taken, click **Save as CSV** to export the data to a .csv file for further analysis.

### 8. Load Another Image
To analyze a new image, repeat the process: click **Load Image**, then select a different file. You can view and switch between images using the **Image List** on the sidebar.

### 9. Select and Adjust New Image
Select the new image from the **Image List** and adjust the grid using the same controls as before. Make sure to adjust the position, size, and color of the grid according to the new image.

### 10. Measure and Save the New Image
Repeat the measurement process for the new image, and again, export the results as CSV by clicking **Save as CSV**.

### 11. Reset the App
To reset the app to its default state, click **Reset**. This will clear all loaded images and measurements, preparing the app for a new analysis session.

## Reference

**Title of the Publication:**
- Authors: Author Name et al.
- Journal: Journal Name
- Volume/Issue: Volume/Issue
- Year: Year

**Abstract:**
Include abstract text here...

## License

This project is licensed under the MIT License. See the LICENSE file for details.

### Acknowledgments

- PySide6: For building the application’s GUI
- Numpy: For efficient numerical computations
- OpenCV: For image processing capabilities
- qt-material: For providing a clean and modern GUI theme
- qtawesome: For adding font-based icons to the application

## Contact & Support

For issues or feature requests, please open an issue on the GitHub repository [https://github.com/yourusername/WellGridApp/issues](https://github.com/yourusername/WellGridApp/issues). For any other inquiries, feel free to contact the developers at email@example.com.

