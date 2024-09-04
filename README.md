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
