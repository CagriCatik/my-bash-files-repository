#!/bin/bash

# Script to install ROS 2 Jazzy

# Step 1: Check and set locale to UTF-8
echo "Checking and setting locale to UTF-8..."
locale  # check current locale
sudo apt update && sudo apt install -y locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8
locale  # verify settings

# Step 2: Add universe repository and install dependencies
echo "Adding universe repository and installing dependencies..."
sudo apt install -y software-properties-common
sudo add-apt-repository universe

# Step 3: Install curl and add ROS 2 GPG key
echo "Installing curl and adding ROS 2 GPG key..."
sudo apt update && sudo apt install -y curl
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

# Step 4: Add ROS 2 repository to sources.list.d
echo "Adding ROS 2 repository to sources list..."
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

# Step 5: Update and install ROS development tools
echo "Updating package index and installing ROS development tools..."
sudo apt update && sudo apt install -y ros-dev-tools

# Step 6: Perform system upgrade
echo "Upgrading the system..."
sudo apt update && sudo apt upgrade -y

# Step 7: Install ROS 2 Jazzy desktop
echo "Installing ROS 2 Jazzy desktop..."
sudo apt install -y ros-jazzy-desktop

# Step 8: Source ROS 2 setup file
# Replace ".bash" with your shell type if necessary (e.g., setup.sh, setup.zsh)
echo "Sourcing ROS 2 setup file..."
source /opt/ros/jazzy/setup.bash

echo "ROS 2 Jazzy installation complete!"
