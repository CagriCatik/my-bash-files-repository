#!/bin/bash

# Bash script to install PlotJuggler using snap

# Function to check if snap is installed
check_snap() {
    if ! command -v snap &> /dev/null
    then
        echo "Snap is not installed. Please install Snap first."
        exit 1
    fi
}

# Function to install PlotJuggler using snap
install_plotjuggler() {
    echo "Installing PlotJuggler..."
    sudo snap install plotjuggler

    # Verify installation
    if snap list | grep -q "plotjuggler"; then
        echo "PlotJuggler installed successfully."
    else
        echo "Installation failed."
        exit 1
    fi
}

# Main script
echo "Starting PlotJuggler installation script..."

# Check if snap is installed
check_snap

# Install PlotJuggler
install_plotjuggler

echo "PlotJuggler installation script completed."
