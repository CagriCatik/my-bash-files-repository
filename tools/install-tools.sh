#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Ensure the script is run with sudo privileges
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root or with sudo."
    exit 1
fi

# Update and upgrade the system
echo "Updating and upgrading the system..."
sudo apt update -y && sudo apt upgrade -y || { echo "Failed to update/upgrade the system"; exit 1; }

# Install essential tools in a single command, avoiding duplicates
echo "Installing essential packages..."
sudo apt install -y \
    build-essential \
    python3 python3-pip \
    nodejs npm \
    docker.io \
    gh \
    zsh \
    htop \
    terminator solaar git || { echo "Failed to install one or more essential packages"; exit 1; }

# Enable and start Docker
echo "Setting up Docker..."
sudo systemctl enable --now docker
sudo usermod -aG docker $USER  # Add current user to Docker group (requires logout and login)

# Install Snap if not already installed
if ! command_exists snap; then
    echo "Installing Snap package manager..."
    sudo apt install -y snapd || { echo "Failed to install snapd"; exit 1; }
else
    echo "Snap is already installed."
fi

# Install VS Code if not already installed
if ! command_exists code; then
    echo "Installing Visual Studio Code via Snap..."
    sudo snap install --classic code || { echo "Failed to install Visual Studio Code"; exit 1; }
else
    echo "Visual Studio Code is already installed."
fi

# Install VS Code extensions
echo "Installing VS Code extensions..."
code --list-extensions | grep -q 'ms-python.python' || code --install-extension ms-python.python || { echo "Failed to install Python extension"; exit 1; }
code --list-extensions | grep -q 'dbaeumer.vscode-eslint' || code --install-extension dbaeumer.vscode-eslint || { echo "Failed to install ESLint extension"; exit 1; }

# Set up GitHub CLI
echo "Configuring GitHub CLI..."
gh auth login || { echo "Failed to authenticate with GitHub"; exit 1; }

# Set up Zsh and Oh My Zsh
echo "Setting up Zsh and Oh My Zsh..."
if [ "$(basename "$SHELL")" != "zsh" ]; then
    chsh -s "$(which zsh)"  # Set zsh as the default shell (logout and login required)
fi
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" || { echo "Failed to install Oh My Zsh"; exit 1; }
else
    echo "Oh My Zsh is already installed."
fi

# Set up Flatpak if not already installed
if ! command_exists flatpak; then
    echo "Installing Flatpak..."
    sudo apt install -y flatpak || { echo "Failed to install Flatpak"; exit 1; }
    sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo || { echo "Failed to add Flathub repository"; exit 1; }
else
    echo "Flatpak is already installed."
fi

# Install communication tools via Snap
echo "Installing Slack and Discord..."
sudo snap install slack --classic || { echo "Failed to install Slack"; exit 1; }
sudo snap install discord || { echo "Failed to install Discord"; exit 1; }

echo "All required software has been installed and configured successfully!"

