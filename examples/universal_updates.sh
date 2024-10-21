#!/bin/bash

# Set the release file path
release_file="/etc/os-release"

# Check for Arch Linux
if grep -q "Arch" "$release_file"; then
    sudo pacman -Syu
# Check for Debian or Ubuntu
elif grep -qE "Debian|Ubuntu" "$release_file"; then
    sudo apt update && sudo apt dist-upgrade
fi
