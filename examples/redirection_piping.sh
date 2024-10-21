#!/bin/bash

# Redirecting output of ls command to a file
ls > directory_contents.txt

# Displaying the content of directory_contents.txt
echo "Contents of directory_contents.txt:"
cat directory_contents.txt

# Piping the output of ls command to less for pagination
echo "Contents of directory displayed using less:"
ls | less

# Counting lines, words, and characters in directory_contents.txt
echo "Word count of directory_contents.txt using redirection:"
wc directory_contents.txt

# Counting lines, words, and characters in directory_contents.txt using piping
echo "Word count of directory_contents.txt using piping:"
cat directory_contents.txt | wc

# Redirecting output of ps command to a file
ps -ef > processes.txt

# Displaying the content of processes.txt
echo "Contents of processes.txt:"
cat processes.txt

# Counting lines, words, and characters in processes.txt using redirection
echo "Word count of processes.txt using redirection:"
wc processes.txt

# Counting lines, words, and characters in processes.txt using piping
echo "Word count of processes.txt using piping:"
cat processes.txt | wc

# Cleaning up temporary files
rm directory_contents.txt processes.txt
