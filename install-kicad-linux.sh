#!/bin/bash

# Check if the user has sudo privileges
if [[ $EUID -ne 0 ]]; then
  echo "This script requires sudo privileges. Please run with sudo."
  exit 1
fi

# Get the Linux distribution and version
distro=$(lsb_release -is | tr '[:upper:]' '[:lower:]')
version=$(lsb_release -rs)

# Check for supported distributions (update as needed)
if [[ "$distro" == "ubuntu" || "$distro" == "debian" || "$distro" == "linuxmint" ]]; then
  echo "Detected $distro $version."
else
  echo "This script is currently designed for Ubuntu, Debian, or Linux Mint."
  echo "KiCad installation might still be possible, but refer to the official"
  echo "KiCad documentation for your distribution: https://www.kicad.org/download/linux/"
  exit 1
fi

# Add the KiCad PPA (adjust for testing builds if desired)
echo "Adding KiCad PPA..."
sudo add-apt-repository ppa:kicad/kicad-8.0-releases

# Update package lists
echo "Updating package lists..."
sudo apt update

# Install KiCad and recommended dependencies
echo "Installing KiCad..."
sudo apt install kicad

echo "KiCad installation complete!"

