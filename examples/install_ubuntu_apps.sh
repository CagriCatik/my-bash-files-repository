#!/bin/bash

# Update the package list
sudo apt update

# Install the Terminator terminal emulator
if sudo apt-get install -y terminator; then
    echo "Terminator installed successfully."
else
    echo "Error installing Terminator. Exiting."
    exit 1
fi

# Install Snapd, the package management system for Snaps
if sudo apt install -y snapd; then
    echo "Snapd installed successfully."
else
    echo "Error installing Snapd. Exiting."
    exit 1
fi

# Install Discord via Snap
if sudo snap install discord; then
    echo "Discord installed successfully."
else
    echo "Error installing Discord. Exiting."
    exit 1
fi

# Install WhatsApp for Linux via Snap
if sudo snap install whatsapp-for-linux; then
    echo "WhatsApp for Linux installed successfully."
else
    echo "Error installing WhatsApp for Linux. Exiting."
    exit 1
fi

# Install Teams for Linux via Snap
if sudo snap install teams-for-linux; then
    echo "Teams for Linux installed successfully."
else
    echo "Error installing Teams for Linux. Exiting."
    exit 1
fi

# Add the PPA for Indicator Sticky Notes
sudo add-apt-repository ppa:umang/indicator-stickynotes

# Update the package list again after adding the PPA
sudo apt-get update

# Install Indicator Sticky Notes
if sudo apt-get install -y indicator-stickynotes; then
    echo "Indicator Sticky Notes installed successfully."
else
    echo "Error installing Indicator Sticky Notes. Exiting."
    exit 1
fi

# Install Git
if sudo apt install -y git; then
    echo "Git installed successfully."
else
    echo "Error installing Git. Exiting."
    exit 1
fi

# Display versions of installed applications
echo "Terminator version:"
terminator --version

echo "Discord version:"
discord --version

echo "WhatsApp for Linux version:"
whatsapp-for-linux --version

echo "Teams for Linux version:"
teams-for-linux --version

echo "Indicator Sticky Notes version:"
indicator-stickynotes --version

echo "Git version:"
git --version

# Log the output to a file
echo "Script executed successfully on $(date)" >> installation_log.txt
