#!/bin/bash

# Check if the script is run as root or with sudo
if [ "$(id -u)" -ne 0 ]; then
    echo "Please run the script as root or using sudo."
    exit 1
fi

# Array of package names to uninstall
packages=("package1" 
          "package2"
          "package3")

# Loop through each package and uninstall
for package in "${packages[@]}"; do
    # Check if the package is installed
    if dpkg -l | grep -q "^ii  $package"; then
        # Uninstall the package
        apt-get remove --purge "$package"

        # Print a message indicating successful uninstallation
        echo "Package $package has been successfully uninstalled."
    else
        # Print a message if the package is not installed
        echo "Package $package is not installed."
    fi
done

echo "All specified packages have been processed."
