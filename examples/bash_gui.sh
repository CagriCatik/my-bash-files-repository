#!/bin/bash

# Display a Zenity dialog box with a message and an OK button
zenity --info --text="Hello, this is a basic GUI example with Bash!" --title="Bash GUI Example"

# Ask the user for their name using an entry dialog
name=$(zenity --entry --text="Enter your name:" --title="Name Input")

# Display a personalized greeting using a message dialog
zenity --info --text="Hello, $name! Welcome to the Bash GUI example." --title="Greeting"

# Ask the user to choose between two options using a question dialog
response=$(zenity --question --text="Do you like using Bash for scripting?" --title="Question")

# Display a message based on the user's response
if [ $? = 0 ]; then
  zenity --info --text="Great! Bash is a powerful scripting language." --title="Response"
else
  zenity --info --text="That's okay. Bash might not be for everyone." --title="Response"
fi

