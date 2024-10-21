#!/bin/bash

# Check if a file is provided as an argument
if [ $# -ne 2 ]; then
    echo "Usage: $0 <pattern> <file>"
    exit 1
fi

pattern=$1
file=$2

# Check if the file exists
if [ ! -f "$file" ]; then
    echo "File '$file' does not exist."
    exit 1
fi

# Search for the pattern in the file
echo "Matching lines for pattern '$pattern' in file '$file':"
grep "$pattern" "$file"
