#!/bin/bash

# Viewing Exit Codes
ls -l /etc
echo "Exit code for the 'ls' command is: $?"

# Script Examples
package="h-top"
sudo apt install $package
echo "Exit code for the package install is: $?"

# Enhancing the script to handle success and failure
sudo apt install $package

if [ $? -eq 0 ]; then
  echo "The installation of $package was successful."
  echo "The new command is available here: $(which $package)"
else
  echo "$package failed to install."
fi

# Redirecting Output
package="h-top"
sudo apt install $package > package_install_results.log 2> package_install_failure.log

# Controlling Exit Codes
directory="/etc"

if [ -d "$directory" ]; then
  echo "The directory $directory exists."
  exit 1  # Forcing an exit code of 1
else
  echo "The directory $directory doesn't exist."
fi

# The following statements won't be executed due to the forced exit.
echo "Additional statements after the if-else block."
