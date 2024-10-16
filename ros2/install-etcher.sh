#!/bin/bash

# Function to check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check if wget or curl exists
if command_exists wget; then
    DOWNLOADER="wget -q --show-progress"
elif command_exists curl; then
    DOWNLOADER="curl -LO"
else
    echo "Error: Neither 'wget' nor 'curl' found. Please install either of them."
    exit 1
fi

# URL of the Etcher AppImage
URL="https://github.com/balena-io/etcher/releases/download/v1.18.11/balenaEtcher-1.18.11-x64.AppImage"

# File name of the Etcher AppImage
APPIMAGE="balenaEtcher-1.18.11-x64.AppImage"

# Check for sudo permissions before running sudo commands
if ! sudo -v >/dev/null 2>&1; then
    echo "Error: You must have sudo privileges to run this script."
    exit 1
fi

# Download Etcher AppImage
echo "Downloading Etcher AppImage..."
if ! $DOWNLOADER "$URL"; then
    echo "Error: Failed to download $APPIMAGE."
    exit 1
fi

# Make the downloaded file executable
chmod +x "$APPIMAGE"

# Move the AppImage to /opt directory
sudo mv "$APPIMAGE" /opt/

# Create a symbolic link to easily run Etcher from the terminal
sudo ln -sf "/opt/$APPIMAGE" /usr/local/bin/etcher

echo "Etcher has been downloaded and installed successfully."
echo "You can now run it by typing 'etcher' in the terminal."

