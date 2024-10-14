# HT-qDotblot

## Overview

### HT-qDotblot: An app for quantifying signals from dot-blot of 96-wellplate

This repository contains a python application named **HT-qDotblot**.
It is a Qt-based (PySide6) desktop application designed for quantitative analysis of 96-well dot-blot images. 
Dot-blot is a high-throughput, quantitative method designed for the rapid and efficient analysis of protein expression levels.


This application allows you to load your dot-blot image and define a grid over the wells of the blot image. 
Then you can measure pixel intensity values for each well, and export the measurements as a CSV file. 
This application can be highly useful in high-throughput screening studies and scientific experiments involving protein or nucleic acid blotting.


The method is particularly effective for detecting proteins of interest in yeast cell lysates using specific (anti-HA) and non-specific (HSP70) antibodies.
To illustrate, we utilize LICOR imaging technology to perform quantitative dot blotting on a 96-well plate format, allowing for simultaneous analysis of multiple samples. 
For the experimental protocol, please refer to the paper. 


## Features

- Load and visualize 96-well dot-blot images
- Define a grid by placing corners to align wells on the dot-blot image
- Adjust grid position, colour, dimensions and well size
- Measure the intensity of each well and export the results as CSV
- Ability to zoom in/out and pan the image
- Save annotated images with grid overlays
- Load multiple images and switch between them for batch processing

## Installation

### Python3 and python virtual environment

   Open a terminal and check which version of python is installed by running the command:
   ```
   python --version
   ```

   To install python3 on your computer, follow the instructions from the [python beginner's guide](https://wiki.python.org/moin/BeginnersGuide/Download)
   
   (Recommended) Create a python virtual environment to install all the dependencies required for the app. 
   In the terminal run:
   ```
   python3 -m venv htq-dotblot
```
   
   Activate the new environment:
   ```
   source htq-dotblot/bin/activate
   ```

### Prerequisites

- Python 3.8+
- PySide6
- numpy
- opencv-python
- qt-material
- qtawesome

### Getting Started

1. Clone the repository (or download and unzip it in a new folder called htq-dotblot):
   ```
   git clone https://github.com/benjamin-elusers/htq-doblot.git
   cd htq-dotblot
   ```

2. Install dependencies:
   ```
   pip3 install -r requirements.txt
   ```

3. Run the application:
   ```
   python3 htq-dotblot.py
   ```

## Usage Tutorial

This step-by-step tutorial will guide you through using **HT-qDotblot** for analyzing your dot blot images.

### 1. Launch the App
After installation, open a terminal window and run the app with the following command: `python htq-doblot.py`. 
The main window will appear with a sidebar, image display area, and measurements section.

### 2. Load an Image
Click the **Load Image** button on the left sidebar to load your dot blot image. 
Select the image file (e.g., .png, .jpg, .tif).

### 3. Adjust Saturation
Use the **Saturation Slider** to adjust the intensity saturation for better visualization. 
Move the slider left to lower the saturation or right to increase it.

### 4. Adjust Zoom
Click the **Zoom In** and **Zoom Out** buttons in the toolbar to zoom in and out on the image. 
You can also use the **Pan Tool** to navigate the zoomed-in image.

### 5. Define the Grid
Click **Define Grid** to enter grid definition mode.

1. Click on each of the three corners of your grid to place the grid on the blot image.
2. Use the **Position**, **Height**, **Width**, **Circle Size**, and **Color** options to adjust the grid as needed.
3. If you make a mistake, click **Cancel Grid Define** to reset and start the process again.

### 6. Measure the Grid
Click the **Measure Grid** button after setting the grid to measure intensity values for each well. 
The measurements (mean, median, standard deviation, etc.) will appear in the **Measurements Table**.

### 7. Save Measurements as CSV
Once measurements are taken, click **Save as CSV** to export the data to a .csv file for further analysis.

### 8. Load Another Image
To analyze a new image, repeat the process: click **Load Image**, then select a different file.
You can view and switch between images using the **Image List** on the sidebar.

### 9. Select and Adjust New Image
Select the new image from the **Image List** and adjust the grid using the same controls as before.
Make sure to adjust the position, size, and color of the grid according to the new image.

### 10. Measure and Save the New Image
Repeat the measurement process for the new image, and again, export the results as CSV by clicking **Save as CSV**.

### 11. Reset the App
To reset the app to its default state, click **Reset**.
This will clear all loaded images and measurements, preparing the app for a new analysis session.

## Reference

**Title of the Publication:**
- Authors: Author Name et al.
- Journal: Journal Name
- Volume/Issue: Volume/Issue
- Year: Year

**Abstract:**
Include abstract text here...

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgments

This application was developed at the [Weizmann Institute of Science](https://cdn-assets-eu.frontify.com/s3/frontify-enterprise-files-eu/eyJwYXRoIjoid2Vpem1hbm4taW5zdGl0dXRlLW9mLXNjaWVuY2VcL2ZpbGVcL2s4bVBkekt5ZzhxZFpvaThlNUhSLnN2ZyJ9:weizmann-institute-of-science:R-7q-CsQFwzd_e06DX-HCxTBCN2OHGbnalRVj6M6ENM?width=800) in [Maya Schuldiner laboratory](https://mayaschuldiner.wixsite.com/schuldinerlab).
We thank the developers of the following packages used to create our application:

- PySide6: For building the application’s GUI
- Numpy: For efficient numerical computations
- OpenCV: For image processing capabilities
- qt-material: For providing a clean and modern GUI theme
- qtawesome: For adding font-based icons to the application

## Contact & Support

For issues or feature requests, please open an issue on the GitHub repository [https://github.com/benjamin-elusers/HT-qDotblot/issues](https:///github.com/benjamin-elusers/HT-qDotblot/issues). 
For any other inquiries, feel free to contact me at benjamin.dubreuil@weizmann.ac.il

## Contributing

We welcome contributions from the community! Please fork the repository and submit a pull request for any improvements or bug fixes.

