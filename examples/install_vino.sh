#!/bin/bash

# Install Vino
sudo apt update
sudo apt install -y vino

# Configure Vino
gsettings set org.gnome.Vino enabled true
gsettings set org.gnome.Vino authentication-methods "['vnc']"
gsettings set org.gnome.Vino vnc-password 'jetson'
gsettings set org.gnome.Vino require-encryption true
gsettings set org.gnome.Vino banner-message "Welcome to my remote desktop"

# Allow connections through the firewall
sudo ufw allow from any to any port 5900 proto tcp

# Restart Vino
killall vino-server

echo "Remote desktop setup completed. You can now connect to this machine using a VNC client."

