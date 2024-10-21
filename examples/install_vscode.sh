#!/bin/sh

# Install essential build tools
sudo apt install -y build-essential

# Check and install snap on Ubuntu versions older than 20.04
MINVER=20.04
CURVER=$(lsb_release -rs | grep -o -E '[0-9]+\.' | grep -o -E '[0-9]+')

if [ $CURVER -ge $MINVER ]; then
    echo "Ubuntu version >= $MINVER. No need to install snap"
else
    echo "Ubuntu version < $MINVER. Trying to install snap..."
    sudo apt update -y
    sudo apt install -y snapd
fi

# Install Visual Studio Code using snap
sudo snap install --classic code

# Install Visual Studio Code extensions
code --install-extension ms-python.python
code --install-extension ms-python.debugpy
code --install-extension KevinRose.vsc-python-indent
code --install-extension shakram02.bash-beautify
code --install-extension rogalmic.bash-debug
