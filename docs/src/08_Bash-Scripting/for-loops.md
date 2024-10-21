# For Loops

## Overview
In this class, we will delve into the concept of "for loops." For loops allow us to perform tasks repeatedly for each item in a set. Unlike if statements, which perform tasks based on conditions, for loops iterate through a predefined set of elements.

## Script Example: Iterating Numbers
```bash
#!/bin/bash

# Using a for loop to iterate through numbers 1 to 10
for n in {1..10}
do
    echo "Current number: $n"
    sleep 1
done

echo "This is outside of the for loop."
```

### Explanation:
1. The script sets up a for loop to iterate through numbers from 1 to 10 using the `{1..10}` syntax.
2. For each iteration, it echoes the current number and sleeps for 1 second for a dramatic effect.
3. The loop continues until it reaches the end of the set.
4. After the loop, it echoes a statement outside the loop.

## Practical Example: Archiving Log Files
```bash
#!/bin/bash

# Specify the directory containing log files
log_files_dir="/path/to/log/files"

# Using a for loop to archive log files
for file in "$log_files_dir"/*.log
do
    tar czvf "$file.tar.gz" "$file"
done

echo "Log files have been archived successfully."
```

### Explanation:
1. The script sets the `log_files_dir` variable to the directory path containing log files.
2. It uses a for loop to iterate through each file ending with ".log" in the specified directory.
3. For each file, it runs the `tar` command to create a compressed archive with the same name but with ".tar.gz" extension.
4. The loop repeats until all log files are processed.
5. After the loop, it echoes a success message.

