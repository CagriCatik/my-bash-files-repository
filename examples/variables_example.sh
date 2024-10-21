#!/bin/bash

# Declare variables
my_name="J"
my_age=40

# Print using variables
echo "Hello, my name is $my_name."
echo "I am $my_age years old."

# Declare a variable
word="awesome"

# Print using the variable
echo "I find Bash scripting $word."
echo "Using variables makes scripts more $word."
echo "Variables are $word for scripting."

# Declare a variable with command output
files=$(ls)

# Print the variable
echo "Files in the current directory: $files"

# Use system variable
echo "Your username is $USER."
