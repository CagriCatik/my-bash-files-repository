# Universal Update Script

## Overview
In this class (Class 08), we will create a useful script – the Universal Update Script. 

## Script Explanation
In this script, we aim to create a universal update script that works across different Linux distributions. It leverages the existence of specific directories or keywords in the `/etc` directory and the contents of the `/etc/os-release` file.

## Script Content
```bash
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
```

## Script Execution
1. The script begins with the shebang line (`#!/bin/bash`), indicating that it's a Bash script.
2. We set the `release_file` variable to the path of the `/etc/os-release` file.
3. The first `if` statement checks if the string "Arch" is present in the release file. If true, it executes `sudo pacman -Syu` to update the Arch Linux system.
4. The second `if` statement checks if either "Debian" or "Ubuntu" is present in the release file. If true, it executes `sudo apt update && sudo apt dist-upgrade` to update the Debian or Ubuntu-based system.

