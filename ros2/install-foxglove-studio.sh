#!/bin/bash

# Exit the script on any error
set -e

# Update the package list
echo "Updating package list..."
sudo apt-get update

# Install Snap if it is not installed
if ! command -v snap &> /dev/null; then
    echo "Snap is not installed. Installing Snap..."
    sudo apt-get install -y snapd
fi

# Install Foxglove Studio using Snap
echo "Installing Foxglove Studio via Snap..."
sudo snap install foxglove-studio

# Install Foxglove Bridge using Snap (beta channel)
echo "Installing Foxglove Bridge (beta) via Snap..."
sudo snap install foxglove-bridge --beta

# Verify installation of Foxglove Studio
echo "Verifying Foxglove Studio installation..."
if snap list | grep -q foxglove-studio; then
    echo "Foxglove Studio installed successfully."
else
    echo "Foxglove Studio installation failed. Please check for any errors."
fi

# Verify installation of Foxglove Bridge
echo "Verifying Foxglove Bridge installation..."
if snap list | grep -q foxglove-bridge; then
    echo "Foxglove Bridge (beta) installed successfully."
else
    echo "Foxglove Bridge installation failed. Please check for any errors."
fi

# Launch Foxglove Studio
echo "Launching Foxglove Studio..."
foxglove-studio
