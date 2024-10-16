#!/bin/bash

# Script to install ROS 2 Jazzy Jalisco on Ubuntu 24.04 (Noble)

# Exit on errors
set -e

LOGFILE="ros2_jazzy_install.log"
exec > >(tee -i $LOGFILE)
exec 2>&1

echo "-----------------------------------------------"
echo "ROS 2 Jazzy Jalisco Installation Script for Ubuntu 24.04"
echo "Logging installation process to $LOGFILE"
echo "-----------------------------------------------"

# Step 1: Update package index
echo "Updating package index..."
sudo apt update
echo "Package index updated."

# Step 2: Set up locales
echo "Setting up locales for UTF-8 support..."
sudo apt install -y locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8
locale  # Verify settings
echo "Locales set up."

# Step 3: Enable the Universe repository
echo "Enabling Ubuntu Universe repository..."
sudo apt install -y software-properties-common
sudo add-apt-repository universe
echo "Universe repository enabled."

# Step 4: Add the ROS 2 GPG key and repository
echo "Adding the ROS 2 GPG key..."
sudo rm -f /usr/share/keyrings/ros-archive-keyring.gpg
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "ROS 2 GPG key added."

echo "Adding the ROS 2 repository..."
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
echo "ROS 2 repository added."

# Step 5: Install development tools and ROS 2 dependencies
echo "Installing development tools and ROS 2 dependencies..."
sudo apt update
sudo apt install -y \
  python3-flake8-blind-except \
  python3-flake8-class-newline \
  python3-flake8-deprecated \
  python3-mypy \
  python3-pip \
  python3-pytest \
  python3-pytest-cov \
  python3-pytest-mock \
  python3-pytest-repeat \
  python3-pytest-rerunfailures \
  python3-pytest-runner \
  python3-pytest-timeout \
  ros-dev-tools
echo "Development tools and dependencies installed."

# Step 6: Get ROS 2 Jazzy code
echo "Creating a ROS 2 workspace and cloning the source code..."
mkdir -p ~/ros2_jazzy/src
cd ~/ros2_jazzy
vcs import --input https://raw.githubusercontent.com/ros2/ros2/jazzy/ros2.repos src
echo "ROS 2 source code cloned."

# Step 7: Install ROS 2 dependencies using rosdep
echo "Installing ROS 2 dependencies using rosdep..."
sudo apt upgrade -y
sudo rosdep init
rosdep update
rosdep install --from-paths src --ignore-src -y --skip-keys "fastcdr rti-connext-dds-6.0.1 urdfdom_headers"
echo "ROS 2 dependencies installed."

# Step 8: Build ROS 2
echo "Building ROS 2 workspace using colcon..."
cd ~/ros2_jazzy/
colcon build --symlink-install
echo "ROS 2 workspace built."

# Step 9: Set up environment
echo "Setting up environment..."
source ~/ros2_jazzy/install/local_setup.bash
echo "Environment setup complete."

# Step 10: Completion message
echo "-----------------------------------------------"
echo "ROS 2 Jazzy Jalisco installation completed successfully!"
echo "Please restart your terminal or run 'source ~/ros2_jazzy/install/local_setup.bash' to start using ROS 2."
echo "-----------------------------------------------"
