# Cheatsheet

## 1. File and Directory Manipulation
- `ls`: Lists files and directories.
- `cd`: Changes the current directory.
- `pwd`: Shows the current directory.
- `cp`: Copies files or directories.
- `mv`: Moves or renames files or directories.
- `rm`: Deletes files or directories.
- `mkdir`: Creates a new directory.

## 2. Text Editing
- `nano`: Opens the Nano text editor.
- `vim` or `vi`: Opens the Vim text editor.
- `cat`: Displays the content of a file.
- `grep`: Searches files for a pattern.
- `echo`: Prints text to the console.

## 3. System Information
- `uname -a`: Displays information about the kernel.
- `lsb_release -a`: Shows information about the Ubuntu version.
- `df -h`: Displays disk space usage.
- `free -m`: Shows the memory status.

## 4. Package Management
- `sudo apt-get update`: Updates the package lists.
- `sudo apt-get upgrade`: Upgrades all installed packages.
- `sudo apt-get install [package]`: Installs a package.
- `sudo apt-get remove [package]`: Uninstalls a package.

## 5. User Management
- `sudo adduser [username]`: Adds a new user.
- `sudo passwd [username]`: Changes a user's password.
- `sudo usermod -aG [group] [username]`: Adds a user to a group.

## 6. Network Commands
- `ifconfig` or `ip a`: Shows network interfaces and their configuration.
- `ping [hostname or IP]`: Sends ICMP packets to check reachability.
- `wget [URL]`: Downloads files from a URL.
- `ssh [user]@[IP address]`: Connects to a remote server via SSH.

## 7. Process Management
- `ps`: Shows running processes.
- `top`: Displays running processes in real-time with system-wide statistics.
- `kill [process ID]`: Ends a running process.
- `pkill [process name]`: Ends processes by their name.

## 8. Archiving and Compression
- `tar`: Creates or extracts Tar archives.
- `gzip` and `gunzip`: Compresses or decompresses files with gzip.

## 9. System Services
- `systemctl start [service]`: Starts a systemd service.
- `systemctl stop [service]`: Stops a systemd service.
- `systemctl restart [service]`: Restarts a systemd service.
- `systemctl status [service]`: Shows the status of a systemd service.

## 10. System Search
- `find [directory] -name [filename]`: Searches for files in the specified directory.
- `locate [filename]`: Quickly finds files through the database.

## 11. Environment Variables
- `export VARIABLE=value`: Sets an environment variable.
- `echo $VARIABLE`: Prints the value of an environment variable.

## 12. File System Information
- `du -h [directory]`: Shows the size of directories.
- `df -h`: Displays disk space usage of the file system.

## 13. File and Directory Permissions
- `chmod`: Changes the permissions of a file or directory.
- `chown`: Changes the owner of a file or directory.

## 14. Shell Features
- `history`: Shows the command history.
- `!!`: Repeats the last command.
- `Ctrl + C`: Interrupts the execution of a running command.

## 15. Help and Documentation
- `man [command]`: Shows the manual page for a command.
- `--help`: Displays help options for many commands.
