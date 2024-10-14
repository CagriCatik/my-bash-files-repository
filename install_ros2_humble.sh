#!/bin/bash

# Function to check UTF-8 locale
check_locale() {
    locale  # check for UTF-8
    sudo apt update && sudo apt install locales
    sudo locale-gen en_US en_US.UTF-8
    sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
    export LANG=en_US.UTF-8
    locale  # verify settings
}

# Function to set up ROS 2 sources
setup_sources() {
    sudo apt install software-properties-common
    sudo add-apt-repository universe

    # Add ROS 2 GPG key
    sudo apt update && sudo apt install curl -y
    sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

    # Add repository to sources list
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
}

# Function to install ROS 2 packages
install_ros2_packages() {
    sudo apt update
    sudo apt upgrade

    # Warning for Ubuntu 22.04
    echo "Warning: Ensure systemd and udev-related packages are updated on Ubuntu 22.04 before installing ROS 2 to avoid critical system package removal."
    echo "Refer to ros2/ros2#1272 and Launchpad #1974196 for details."

    # Desktop Install
    sudo apt install ros-humble-desktop

    # ROS-Base Install
    # sudo apt install ros-humble-ros-base

    # Development Tools Install
    sudo apt install ros-dev-tools
}

# Function to set up environment
setup_environment() {
    # Source the setup script
    source /opt/ros/humble/setup.bash
}


# Function to uninstall ROS 2
uninstall_ros2() {
    sudo apt remove ~nros-humble-* && sudo apt autoremove

    # Remove repository
    sudo rm /etc/apt/sources.list.d/ros2.list
    sudo apt update
    sudo apt autoremove
    # Consider upgrading for packages previously shadowed.
}

# Main script execution
check_locale
setup_sources
install_ros2_packages
setup_environment

# Uncomment the line below if you want to uninstall ROS 2
# uninstall_ros2
