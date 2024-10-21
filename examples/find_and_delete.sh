#!/bin/bash

# Check if the script is run with root privileges
if [ "$EUID" -ne 0 ]; then
  echo "Please run the script as a root user."
  exit 1
fi

# List all installed packages
installed_packages=$(dpkg -l | grep '^ii' | awk '{print $2}')

# Display the installed packages
echo "Installed Applications:"
echo "$installed_packages"

# Output text file
output_file="installed_apps.txt"

# Export all installed packages to the text file
dpkg-query -l | awk '/^ii/ {print $2}' > "$output_file"

echo "List of installed applications has been saved in $output_file."
