#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Ensure the script is run with sudo privileges
if ! sudo -v >/dev/null 2>&1; then
    echo "Error: You must have sudo privileges to run this script."
    exit 1
fi

# Update system repositories
echo "Updating package lists..."
if ! sudo apt update -y; then
    echo "Error: Failed to update package lists."
    exit 1
fi

# Upgrade system packages
echo "Upgrading installed packages..."
if ! sudo apt upgrade -y; then
    echo "Error: Failed to upgrade packages."
    exit 1
fi

# Install Snap if not already installed
if ! command_exists snap; then
    echo "Installing Snap package manager..."
    if ! sudo apt install snapd -y; then
        echo "Error: Failed to install snapd."
        exit 1
    fi
else
    echo "Snap is already installed."
fi

# Install Visual Studio Code (VS Code) using Snap
echo "Installing Visual Studio Code..."
if ! sudo snap install --classic code; then
    echo "Error: Failed to install Visual Studio Code."
    exit 1
fi

# Install necessary packages in one apt command for efficiency
echo "Installing Terminator, Solaar, and Git..."
if ! sudo apt install -y terminator solaar git; then
    echo "Error: Failed to install Terminator, Solaar, or Git."
    exit 1
fi

echo "All required software has been installed successfully!"

