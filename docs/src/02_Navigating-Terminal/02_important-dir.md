# Navigating the Directory System in Ubuntu (Part 2)

This tutorial provides a detailed, scientific introduction to advanced navigation and file management within the directory system in Ubuntu Linux. It builds on the basic concepts introduced earlier, focusing on critical system directories, user permissions, and file viewing commands.

## Introduction

In this tutorial, we will explore advanced directory navigation, understanding the purpose of various system directories, and learning how to manage file permissions and content viewing using `cat` and `less` commands.

## Logging in as a Non-Root User

After creating non-root user accounts, it's essential to operate under these accounts for everyday tasks to avoid accidental system changes. Let's log in as a non-root user and explore the directory structure.

### Checking the Current Directory

When logged in as a non-root user (e.g., `mike`), you can check the current directory using:

```bash
pwd
```

Example output:

```plaintext
/home/mike
```

### Listing Files and Directories

To list files and directories in the current directory:

```bash
ls
```

Example output:

```plaintext
Desktop  Documents  Downloads  Music  Pictures  Videos
```

## Navigating Directories with `cd`

### Changing to the Root Directory

To navigate to the root directory directly:

```bash
cd /
```

### Changing to the Home Directory

To return to your home directory:

```bash
cd ~
```

Or simply:

```bash
cd
```

## Exploring Important System Directories

### The `/bin` Directory

The `/bin` directory contains essential command binaries that are available to all users. To explore:

```bash
cd /bin
ls
```

Here, you'll find executable programs like `date`, `ls`, `cp`, etc.

### The `/etc` Directory

The `/etc` directory contains system-wide configuration files. To explore:

```bash
cd /etc
ls
```

To get a detailed listing:

```bash
ls -l
```

### Viewing Configuration Files

To view the content of configuration files, use `cat` or `less`:

```bash
cat hostname
```

Or, for larger files:

```bash
less bash.bashrc
```

Navigate through `less` with the space bar and exit with `q`.

### The `/home` Directory

The `/home` directory contains user directories. Each user has a subdirectory here:

```bash
cd /home
ls
```

To navigate to a specific user's directory:

```bash
cd mike
```

### The `/media` Directory

The `/media` directory is where external drives are mounted:

```bash
cd /media
ls
```

Insert a USB drive and it will appear here.

### The `/opt` Directory

The `/opt` directory is used for installing optional software:

```bash
cd /opt
ls
```

Installed software packages like `pycharm` may be found here.

### The `/root` Directory

The `/root` directory is the home directory for the root user:

```bash
cd /root
ls
```

### The `/sbin` Directory

The `/sbin` directory contains essential system binaries used for system administration:

```bash
cd /sbin
ls
```

Commands like `ifconfig` and `ip` are found here.

### The `/var` Directory

The `/var` directory contains variable data like logs and temporary files:

```bash
cd /var
ls
```

To explore logs:

```bash
cd log
ls
```

## Viewing File Contents

### Using `cat`

The `cat` command concatenates and displays file content:

```bash
cat /etc/hostname
```

### Using `less`

The `less` command is preferable for large files:

```bash
less /etc/bash.bashrc
```

## Managing Permissions

File permissions are crucial for security. To view permissions:

```bash
ls -l /var/log
```

### Understanding Permission Syntax

Permissions are displayed in the format:

```plaintext
-rw-r--r--
```

- `r`: read
- `w`: write
- `x`: execute
- The first character indicates the file type (`-` for files, `d` for directories).
- The next nine characters are divided into three groups for the owner, group, and others.

### Changing Permissions with `chmod`

To change file permissions:

```bash
chmod 755 filename
```

### Viewing Ownership with `ls -l`

To see file ownership:

```bash
ls -l /var/log
```

## Escalating Privileges with `sudo`

To execute commands with elevated privileges, use `sudo`:

```bash
sudo cat /var/log/user.log
```

You will be prompted for your password.

### Adding Users to the `sudo` Group

To grant `sudo` privileges to a user:

```bash
sudo usermod -aG sudo mike
```

### Switching to Root User

To switch to the root user:

```bash
su root
```
