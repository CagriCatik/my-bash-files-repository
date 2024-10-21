#!/bin/bash

# Example 1: Counting from 1 to 10
myvar=1

while [ $myvar -le 10 ]
do
    echo "Current value: $myvar"
    myvar=$((myvar + 1))
    sleep 0.5
done

# Example 2: Checking File Existence
while [ -f ~/test_file ]
do
    echo "Test file exists - $(date)"
    sleep 5
done

echo "The file no longer exists. Exiting."

# Improved Example: Checking File Existence with Delay
while [ -f ~/test_file ]
do
    echo "Test file exists - $(date)"
    sleep 5
done

echo "The file has gone missing. Exiting."
