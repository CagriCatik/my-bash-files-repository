# Where to Store Scripts

## Overview
In this class, we'll discuss the importance of choosing the right location to store your scripts on the Linux file system. By selecting an appropriate directory, you ensure easy access and execution of your scripts. Let's dive into the details!

## Choosing a Script Storage Location

### Example: Universal Update Script
For this lesson, we'll use the Universal Update Script created in Lesson 8. In my case, I've renamed it to `update.sh` and placed it in my local working directory.

### Initial Script Execution
While you can run scripts from the current working directory using `./script_name`, it's not the best practice. Consider scenarios where others might need to run your scripts or when you're away. Running scripts from your home directory might limit access for others.

### File System Hierarchy Standard (FHS)
The [File System Hierarchy Standard (FHS)](https://refspecs.linuxfoundation.org/FHS_3.0/fhs-3.0.html) outlines the directory structure on Linux. For storing scripts, we focus on the `user/local/bin` directory. This directory is meant for locally installed programs that system administrators use.

### Moving the Script to `user/local/bin`
Let's move the `update.sh` script to `user/local/bin`:
```bash
sudo mv update.sh /usr/local/bin/update
```

### Permissions Adjustment
For security, let's change ownership to root:
```bash
sudo chown root:root /usr/local/bin/update
```

### Removing File Extension
File extensions like `.sh` are not required in Linux. The shebang (`#!/bin/bash`) in the script indicates the interpreter. I've removed the `.sh` extension to simplify the name:
```bash
sudo mv /usr/local/bin/update.sh /usr/local/bin/update
```

### Checking `PATH` Variable
The shell looks in directories listed in the `PATH` variable to find executable files. Check `PATH` with:
```bash
echo $PATH
```

### Execution Without Full Path
With `update` in `user/local/bin`, you can execute it without the full path:
```bash
update
```

### Understanding `PATH`
The `PATH` variable makes it unnecessary to provide the full path for executable scripts stored in directories listed in it.

### Modifying `PATH`
To add a directory to `PATH`:
```bash
export PATH=/new/directory:$PATH
```
This adds `/new/directory` to the `PATH`.

