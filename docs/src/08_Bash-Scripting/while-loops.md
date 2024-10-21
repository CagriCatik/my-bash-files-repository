# While Loops

## Overview
Now, let's dive into while loops, which allow scripts to execute a block of code repeatedly until a specified condition is met. A common real-life scenario for while loops is creating menus where users make selections and then return to the menu.

## Example 1: Counting from 1 to 10
```bash
#!/bin/bash

myvar=1

while [ $myvar -le 10 ]
do
    echo "Current value: $myvar"
    myvar=$((myvar + 1))
    sleep 0.5
done
```
This script initializes a variable `myvar` to 1 and enters a while loop. It continues to execute as long as `myvar` is less than or equal to 10. In each iteration, it echoes the current value, increments `myvar`, and then repeats. The loop exits when `myvar` becomes greater than 10.

## Example 2: Checking File Existence
```bash
#!/bin/bash

while [ -f ~/test_file ]
do
    echo "Test file exists - $(date)"
    sleep 5
done

echo "The file no longer exists. Exiting."
```
In this example, the script checks for the existence of a file named `test_file` in the home directory using the `-f` test. While the file exists, it echoes a message along with the current date every 5 seconds. Once the file is deleted, the script exits.

## Improved Example: Checking File Existence with Delay
```bash
#!/bin/bash

while [ -f ~/test_file ]
do
    echo "Test file exists - $(date)"
    sleep 5
done

echo "The file has gone missing. Exiting."
```
To enhance the script, we introduced a 5-second delay using `sleep`. This ensures that the script checks for file existence less frequently, making it more efficient. Adjust the delay based on the importance of the file and the desired checking frequency.

