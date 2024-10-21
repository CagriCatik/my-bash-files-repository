#!/bin/bash

# Example: Using If Statements
my_num=200

if [ $my_num -eq 200 ]; then
    echo "The condition is true"
fi

# Enhancing If Statements
if [ $my_num -eq 200 ]; then
    echo "The condition is true"
else
    echo "The condition is not true"
fi

# Combining Conditions with If-Else
if [ $my_num -eq 200 ]; then
    echo "The condition is true"
else
    echo "The condition is not true"
fi

# Checking for Inequality
if [ $my_num -ne 200 ]; then
    echo "The condition is true"
else
    echo "The condition is not true"
fi

# Additional Checks
if [ $my_num -gt 200 ]; then
    echo "The condition is true"
else
    echo "The condition is not true"
fi

# Checking File Existence
if [ -f ~/my_file ]; then
    echo "The file exists"
else
    echo "The file does not exist"
fi

# Using the `which` Command
command="/usr/bin/h-top"

if command -v $command &> /dev/null; then
    echo "$command is available"
else
    echo "$command is not available"
    sudo apt update && sudo apt install -y htop
fi

# Run the command
$command
