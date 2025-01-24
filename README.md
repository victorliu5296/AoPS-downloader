# AoPS Downloader

## Description
AoPS Downloader is a tool designed to download and compile AMC (American Mathematics Competitions) and AIME (American Invitational Mathematics Examination) problems from various years into a structured format. This project is largely built upon the work of [byronxu99/amc-pdf](https://github.com/byronxu99/amc-pdf). Future support for additional competitions may be added.

## Installation Instructions
To install the necessary dependencies, ensure you have Python installed, then run:
```bash
pip install -r requirements.txt
```

Additionally, you will need to install the following software:

- **Ghostscript**: Download the current release (10.04.0) from [Ghostscript's official website](https://ghostscript.com/download/gsdnld.html) and follow the installation instructions.
- **Asymptote**: Download version 2.92 from [Asymptote's official website](https://asymptote.sourceforge.io/) and follow the installation instructions.
- **MiKTeX**: Download and install MiKTeX from [MiKTeX's official website](https://miktex.org/download) for pdflatex and related functionalities.

## Usage
To use the AoPS Downloader, run the following command:
```bash
python aops_downloader.py
```
This will initiate the downloading and compiling process for the AMC and AIME problems.

## Credits
This project is heavily inspired by and built upon the work of [byronxu99/amc-pdf](https://github.com/byronxu99/amc-pdf). Special thanks to the contributors of that repository.

## License
This project is licensed under the Apache 2.0 License. See the [LICENSE](LICENSE) file for more details.

## Compatibility
This project was developed on Windows 11. There are no guarantees it will work on other operating systems, but it should function correctly if the TeX and other dependencies are compatible.
