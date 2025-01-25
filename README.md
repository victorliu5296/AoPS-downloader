# AoPS Downloader

## Description
AoPS Downloader is a tool designed to download and compile AMC (American Mathematics Competitions) and AIME (American Invitational Mathematics Examination) problems from various years into a structured format. This project is largely built upon the work of [byronxu99/amc-pdf](https://github.com/byronxu99/amc-pdf). Future support for additional competitions may be added.

## Downloading Past Contents
There are some PDFs of some combined past contests' ready for download in the `output` folder.

## Installation Instructions and Guide
For detailed installation instructions from scratch for those who are not familiar with using GitHub, please refer to the [Installation Guide](INSTALLATION_GUIDE.md).

## Usage
To use the AoPS Downloader, run the following command:
```bash
python aops_downloader.py
```
This will initiate the downloading and compiling process for the AMC and AIME problems. You can expect the output files to be generated in the `output` directory.

### Prerequisites
Before you begin, ensure you have Python installed on your system. The recommended version is Python 3.12.8 as it was used for development.

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

## Credits
This project is heavily inspired by and built upon the work of [byronxu99/amc-pdf](https://github.com/byronxu99/amc-pdf). Special thanks to the contributors of that repository.

## License
This project is licensed under the Apache 2.0 License. See the [LICENSE](LICENSE) file for more details.

## Compatibility
This project was developed on Windows 11 using Python 3.12.8. It should work on other recent versions of Python as long as the packages support them. There are no guarantees it will work on other operating systems, but it should function correctly if the TeX and other dependencies are compatible.

## Future Plans

- [ ] Add support for additional competitions (you can discuss this on the [GitHub Discussions](https://github.com/victorliu5296/AoPS-downloader/discussions) page or [create an issue](https://github.com/victorliu5296/AoPS-downloader/issues/new) if you have any suggestions). To check available competitions, you can look at the `CONTEST_CONFIGS` variable in the `aops_downloader.py` file.