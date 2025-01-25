# AoPS Downloader

## Description
AoPS Downloader is a tool designed to download and compile AMC (American Mathematics Competitions) and AIME (American Invitational Mathematics Examination) problems from various years into a structured format. This project is largely built upon the work of [byronxu99/amc-pdf](https://github.com/byronxu99/amc-pdf). Future support for additional competitions may be added.

## Installation Instructions

### Prerequisites
Before you begin, ensure you have Python installed on your system. You can check if Python is installed by running the following command in your command prompt or terminal:
```bash
python --version
```
If Python is not installed, you can download it from the [official Python website](https://www.python.org/downloads/). Follow the installation instructions provided there.

### Install Dependencies
To install the necessary dependencies, run the following command:
```bash
pip install -r requirements.txt
```

### Additional Software
You will also need to install the following software:

- **Ghostscript**: Download the current release (10.04.0) from [Ghostscript's official website](https://ghostscript.com/download/gsdnld.html) and follow the installation instructions.
- **Asymptote**: Download version 2.92 from [Asymptote's official website](https://asymptote.sourceforge.io/) and follow the installation instructions.
- **MiKTeX**: Download and install MiKTeX from [MiKTeX's official website](https://miktex.org/download) for pdflatex and related functionalities.

### Troubleshooting
If you encounter issues during installation, consider the following:
- Ensure that you have the correct version of Python installed.
- Check that all dependencies are installed correctly.
- Refer to the official documentation of the software for troubleshooting tips.

## Usage
To use the AoPS Downloader, run the following command:
```bash
python aops_downloader.py
```
This will initiate the downloading and compiling process for the AMC and AIME problems. You can expect the output files to be generated in the `output` directory.

## Credits
This project is heavily inspired by and built upon the work of [byronxu99/amc-pdf](https://github.com/byronxu99/amc-pdf). Special thanks to the contributors of that repository.

## License
This project is licensed under the Apache 2.0 License. See the [LICENSE](LICENSE) file for more details.

## Compatibility
This project was developed on Windows 11 and is compatible with Python 3.12.8. It should work on other recent versions of Python as long as the packages support them. There are no guarantees it will work on other operating systems, but it should function correctly if the TeX and other dependencies are compatible.

## FAQs
**Q: What should I do if I encounter an error when running the script?**  
A: Check the error message for clues. Ensure all dependencies are installed and that you are using the correct version of Python.

**Q: Can I run this on macOS or Linux?**  
A: While this project was developed on Windows 11, it may work on other operating systems if the dependencies are compatible. Please refer to the documentation for each software for installation on your OS.
