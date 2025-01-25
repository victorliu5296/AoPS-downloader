# Installation Guide for AoPS Downloader

This guide will walk you through installing AoPS Downloader step by step, even if you've never coded before.

## 1. Installing Python

1. Go to https://www.python.org/downloads/
2. Click the "Download Python 3.12.8" button
3. Run the downloaded installer
4. **IMPORTANT**: Check the box that says "Add Python to PATH" during installation
5. Click "Install Now"
6. Wait for installation to complete and click "Close"

## 2. Installing Required Software

### Ghostscript
1. Visit https://ghostscript.com/download/gsdnld.html
2. Download "Ghostscript 10.04.0 for Windows (64 bit)"
3. Run the installer and follow the default options
4. Click "Install" and wait for completion

### Asymptote
1. Go to https://asymptote.sourceforge.io/
2. Download version 2.92 for Windows
3. Run the installer
4. Follow the default installation options
5. Click "Finish" when complete

### MiKTeX
1. Visit https://miktex.org/download
2. Click "Download" under "Windows" section
3. Run the downloaded installer
4. Choose "Install for all users" when prompted
5. Use the default installation settings
6. When installation completes, open "MiKTeX Console" from Start menu
7. Click "Check for updates" and install any available updates

## 3. Downloading AoPS Downloader

1. Go to https://github.com/victorliu5296/AoPS-downloader
2. Click the green "Code" button
3. Click "Download ZIP"
4. Extract the ZIP file to a location you can easily find (e.g., Desktop)

## 4. Installing Dependencies

1. Open Command Prompt (CMD):
   - Navigate inside the extracted folder `AoPS-downloader`
   - Right click and select `Open in Terminal`
2. Install the required Python packages:
   - Run the following command in the terminal (type it and press Enter):
     ```bash
     pip install -r requirements.txt
     ```
   - Wait for the installation to complete

## 5. Running the Program

1. In the same Command Prompt window, type: `python aops_downloader.py`
2. The program will start and prompt you with options. Files will be created in the `output` folder.

## Troubleshooting

If you see any errors:

1. Make sure all software was installed correctly
2. Restart your computer
3. Try running the Command Prompt as Administrator
4. Check that Python is in your PATH:
- Open CMD and type `python --version`
- If this shows an error, you need to reinstall Python with "Add to PATH" checked

## Getting Help

If you're still having issues:
1. Take a screenshot of any error messages
2. Create a new issue on GitHub:
- Go to https://github.com/victorliu5296/AoPS-downloader/issues
- Click "New Issue"
- Describe your problem and attach screenshots