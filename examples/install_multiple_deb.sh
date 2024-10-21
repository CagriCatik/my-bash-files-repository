#!/bin/bash

# Check if the script is run as root or with sudo
if [ "$(id -u)" -ne 0 ]; then
    echo "Please run the script as root or using sudo."
    exit 1
fi

# Array of DEB files to install
deb_files=("path/to/another-package_1.0.0_arm64.deb" 
           "path/to/another-package_1.0.0_arm64.deb")

# Loop through each DEB file and install
for deb_file in "${deb_files[@]}"; do
    # Check if the DEB file exists
    if [ ! -f "$deb_file" ]; then
        echo "Error: DEB file not found. Please provide the correct path."
        exit 1
    fi

    # Install the DEB file
    dpkg -i "$deb_file"

    # Install dependencies
    apt-get install -f

    # Print a message indicating successful installation
    echo "Package $(basename "$deb_file") has been successfully installed."

    # Restart the indicator
    killall indicator-multiload
done

echo "All packages have been successfully installed."
