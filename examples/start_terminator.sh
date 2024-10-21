#!/bin/bash

# Function to open Terminator with specified title and geometry
open_terminal() {
    terminator --title="$1" --geometry="$2" &
}

# Function to get screen width and height
get_screen_size() {
    screen_info=($(xrandr | grep primary | awk '{print $4}' | tr 'x' ' '))
    screen_width=${screen_info[0]}
    screen_height=${screen_info[1]}
}

# Specify the titles for the terminals
titles=("Terminal 1" "Terminal 2" "Terminal 3" "Terminal 4")

# Number of terminals to open
num_terminals=${#titles[@]}

# Check if the number of terminals is at least 4
if [ "$num_terminals" -lt 4 ]; then
    echo "Error: The number of terminals must be at least 4."
    exit 1
fi

# Get screen size
get_screen_size

# Calculate dynamic positions based on screen size
terminal_width=$((screen_width / 4))
terminal_height=$((screen_height / 4))

position_terminal1="${terminal_width}x${terminal_height}+100+100"
position_terminal2="${terminal_width}x${terminal_height}+100+${terminal_height + 100}"
position_terminal3="${terminal_width}x${terminal_height}+${terminal_width + 100}+100"
position_terminal4="${terminal_width}x${terminal_height}+${terminal_width + 100}+${terminal_height + 100}"

# Open Terminator with specific titles and dynamic positions for each terminal
for ((i=0; i<num_terminals; i++)); do
    open_terminal "${titles[i]}" "${position_terminal[i]}"
    sleep 1  # Introduce a 1-second delay between terminal openings (adjust as needed)
done

