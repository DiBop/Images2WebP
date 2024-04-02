# Images2WebP-Resize

This script automates the conversion of image files to the WEBP format, including an option to resize images so that the longest side does not exceed 2048 pixels. It retains the original directory structure in the output, creating a seamless mirror with the _converted suffix appended to the original directory name. Additionally, the script logs the conversion process, noting successfully converted images and flagging any errors encountered.


## Features
- Recursive Conversion: Processes images in the specified directory and all subdirectories.
- Extensive Format Support: Leverages FFmpeg's broad format support to convert a wide range of image formats, including but not limited to JPEG, PNG, TIFF, GIF, BMP, PSD, and more.
- Resizing: Rescales images to ensure the largest dimension is capped at 2048 pixels, maintaining the aspect ratio.
- Logging: Generates a detailed log file (conversion_log.txt), documenting each conversion attempt and outcome.

## Supported Image Formats

This script can handle any image format that FFmpeg supports for conversion to WEBP. Some of the notable formats include:

- JPEG (.jpg, .jpeg)
- Portable Network Graphics (PNG)
- Tagged Image File Format (TIFF)
- Graphics Interchange Format (GIF)
- Bitmap (BMP)
- Photoshop Document (PSD)
- WebP (.webp)
- Portable Pixmap (PPM)
- Portable Bitmap (PBM)
- Portable Graymap (PGM)
  
  and many others, depending on your FFmpeg build's configuration.

## Prerequisites

- FFmpeg: Ensure FFmpeg is installed and its path is included in your system's PATH environment variable. This script relies on FFmpeg for image processing.
- Windows Environment: Designed to run on Windows systems with batch file support.

## Usage
Prepare the Script:
        Download the script and save it as a .bat file on your Windows machine.

#### Run the Conversion:
Directly execute the script from a command prompt with the target directory as an argument:
- `your_script_name.bat "C:\Path\To\Your\Images"`

**_Or_**, drag and drop the folder you wish to convert onto the script file.

Check the Log:
        Review the conversion_log.txt file in the script's directory for a detailed report on the conversion process.

#### **Contribution**

Contributions are welcome! If you have suggestions for improvement or have identified issues, please open an issue or submit a pull request.
License

Distributed under the MIT License. See LICENSE for more information.
