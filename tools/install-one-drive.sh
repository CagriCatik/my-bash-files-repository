#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Update package lists
echo "Updating package lists..."
sudo apt-get update

# Upgrade installed packages
echo "Upgrading installed packages..."
sudo apt-get upgrade -y

# Perform distribution upgrade
echo "Performing distribution upgrade..."
sudo apt-get dist-upgrade -y

# Remove no longer needed packages
echo "Removing no longer needed packages..."
sudo apt-get autoremove -y

# Clean up downloaded archive files
echo "Cleaning up downloaded archive files..."
sudo apt-get autoclean -y

# Add OneDrive repository key
echo "Adding OneDrive repository key..."
if ! command_exists gpg; then
    sudo apt-get install -y gnupg
fi

wget -qO - https://download.opensuse.org/repositories/home:/npreining:/debian-ubuntu-onedrive/xUbuntu_22.04/Release.key | gpg --dearmor | sudo tee /usr/share/keyrings/obs-onedrive.gpg > /dev/null

# Add OneDrive repository to package sources
echo "Adding OneDrive repository to package sources..."
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/obs-onedrive.gpg] https://download.opensuse.org/repositories/home:/npreining:/debian-ubuntu-onedrive/xUbuntu_22.04/ ./" | sudo tee /etc/apt/sources.list.d/onedrive.list

# Update package lists after adding repository
echo "Updating package lists after adding repository..."
sudo apt-get update

# Install OneDrive package
echo "Installing OneDrive..."
sudo apt install --no-install-recommends --no-install-suggests onedrive

echo "OneDrive installation complete."

