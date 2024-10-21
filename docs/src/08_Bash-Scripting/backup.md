# Backup Script

## Prerequisites
Before proceeding with the backup script, ensure you have the following:
- Basic understanding of bash scripting.
- Linux environment with `rsync` installed.

## Getting Started
1. Open your preferred text editor.
2. Create a new bash script file (e.g., `backup_script.sh`).

## Script Overview
Let's break down the script created in the tutorial.

### 1. Shebang and Comment
```bash
#!/bin/bash
# Backup Script - Class 17
```

This section specifies the bash interpreter and provides a comment explaining the purpose of the script.

### 2. Argument Validation
```bash
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_directory> <target_directory>"
    exit 1
fi
```
Ensures that the script is provided with exactly two arguments: source and target directories.

### 3. Check rsync Installation
```bash
if ! command -v rsync &> /dev/null; then
    echo "Error: rsync is not installed. Install it using your package manager."
    exit 2
fi
```
Verifies the presence of `rsync` and exits with an error if it's not installed.

### 4. Date Formatting
```bash
current_date=$(date +'%Y-%m-%d')
```
Captures the current date in the format 'YYYY-MM-DD' for creating date-specific backup folders.

### 5. rsync Options
```bash
rsync_options="-aVb --backup-dir=$2/$current_date --delete --dry-run"
```
Defines rsync options, including archive mode, verbose output, and backup directory structure.

### 6. Dry Run Check
```bash
if [[ $1 == "--dry-run" ]]; then
    rsync_options+=" --dry-run"
fi
```
Appends `--dry-run` to options if the script is executed with the `--dry-run` argument.

### 7. Run rsync in a Subshell
```bash
$(which rsync) $rsync_options "$1" "$2/current"
```
Executes rsync using a subshell, providing source and target directories.

### 8. Logging
```bash
$(which rsync) $rsync_options "$1" "$2/current" > "$2/backup_log_$current_date.log" 2>&1
```
Logs rsync output to a file named `backup_log_YYYY-MM-DD.log`.

## Usage
1. Make the script executable: `chmod +x backup_script.sh`.
2. Run the script with source and target directories:
   ```bash
   ./backup_script.sh /path/to/source /path/to/target
   ```
3. Optionally, perform a dry run:
   ```bash
   ./backup_script.sh --dry-run /path/to/source /path/to/target
   ```

