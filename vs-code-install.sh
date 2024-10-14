#!/bin/bash

# Function to install VS Code
install_vscode() {
    echo "Installing Visual Studio Code..."
    # Determine the OS type and install VS Code accordingly
    if [ "$(uname)" == "Darwin" ]; then
        # macOS
        if ! command -v brew &> /dev/null; then
            echo "Homebrew not found. Installing Homebrew first..."
            /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        fi
        brew install --cask visual-studio-code
    elif [ -f /etc/debian_version ]; then
        # Debian-based Linux (e.g., Ubuntu)
        sudo apt update
        sudo apt install -y wget gpg
        wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
        sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
        sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
        sudo apt update
        sudo apt install -y code
        rm -f packages.microsoft.gpg
    elif [ -f /etc/redhat-release ]; then
        # Red Hat-based Linux (e.g., Fedora)
        sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
        sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
        sudo dnf check-update
        sudo dnf install -y code
    else
        echo "Unsupported OS. Please install Visual Studio Code manually."
        exit 1
    fi
}

# Check if VS Code is installed
if ! command -v code &> /dev/null; then
    install_vscode
else
    echo "Visual Studio Code is already installed."
fi

# Check if the extensions file exists
if [ ! -f vscode-extensions.txt ]; then
    echo "vscode-extensions.txt not found!"
    exit 1
fi

# Read the extensions file and install each extension
while IFS= read -r extension; do
    code --install-extension "$extension"
done < vscode-extensions.txt

echo "All extensions installed."

