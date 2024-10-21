# Exit Codes

## Introduction
Welcome to Class 06 of the Bash Scripting on Linux series! In this tutorial, we'll delve into the concept of exit codes. Exit codes help us determine whether a command was successful or if it encountered an issue.

## Understanding Exit Codes
When running commands in bash, identifying success or failure may not always be as straightforward as it seems. Although error messages are a clear indicator of failure, bash introduces the concept of exit codes to precisely determine command outcomes.

## Viewing Exit Codes
Let's explore exit codes in action. By checking the exit code of the most recent command using `$?`, we can discern whether bash interprets the command as a success (exit code 0) or failure (any exit code other than 0).

For example:
```bash
ls -l /etc
echo $?
```

## Importance of Exit Codes
Understanding exit codes becomes crucial when writing scripts. Scripts often run without manual supervision, and knowing the exit code allows us to take actions based on success or failure. For instance, sending an email notification or updating a log file.

## Script Examples
Let's look at script examples that utilize exit codes:
```bash
package=h-top
sudo apt install $package
echo "Exit code for the package install is: $?"
```

Enhancing the script to handle success and failure:
```bash
package=h-top
sudo apt install $package

if [ $? -eq 0 ]; then
  echo "The installation of $package was successful."
  echo "The new command is available here: $(which $package)"
else
  echo "$package failed to install."
fi
```

## Redirecting Output
Scripts can be refined by redirecting output to files. This helps manage script output and simplifies tracking success or failure.
```bash
package=h-top
sudo apt install $package > package_install_results.log 2> package_install_failure.log
```

## Controlling Exit Codes
It's essential to be cautious when checking exit codes within scripts. Manually forcing an exit code using the `exit` command can lead to unexpected outcomes. Always ensure proper testing to avoid misinterpretations.

For example:
```bash
directory="/etc"

if [ -d "$directory" ]; then
  echo "The directory $directory exists."
  exit 1  # Forcing an exit code of 1
else
  echo "The directory $directory doesn't exist."
fi

# The following statements won't be executed due to the forced exit.
echo "Additional statements after the if-else block."
```
