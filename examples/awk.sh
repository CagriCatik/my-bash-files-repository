#!/bin/bash

# Check if /etc/passwd exists
if [[ ! -f /etc/passwd ]]; then
    echo "/etc/passwd file not found!"
    exit 1
fi

# Use cat to display the content of /etc/passwd, grep to filter lines, and awk to extract usernames and UIDs
cat /etc/passwd | grep ':' | awk -F':' '{ print $1, $3 }' > users_and_uids.txt

# Output the results to the terminal
echo "Usernames and UIDs have been extracted to users_and_uids.txt:"
cat users_and_uids.txt
