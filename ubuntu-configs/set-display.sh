#!/bin/bash
# Set resolution and position for HDMI-0
xrandr --output HDMI-0 --mode 2560x1440 --rate 59.95 --right-of DP-1
# Set resolution and position for DP-1 (Primary)
xrandr --output DP-1 --mode 2560x1440 --rate 59.95 --primary

