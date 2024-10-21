# System Monitoring and Process Management in Ubuntu

## Introduction

In this tutorial, we will explore commands for monitoring disk usage, memory usage, and running processes in Ubuntu. These commands are essential for managing system performance and diagnosing issues.

## Displaying Disk Usage with `df`

The `df` command displays the amount of disk space available on the file system. By default, it shows the disk usage in 1K blocks. To make the output more human-readable, we use the `-h` option.

### Default Disk Usage

To see the default disk usage:

```bash
df
```

This will display disk usage in 1K blocks, which might not be very intuitive.

### Human-Readable Format

To display disk usage in a human-readable format:

```bash
df -h
```

This command will present the disk usage in units such as KB, MB, or GB.

#### Example Output

```plaintext
Filesystem      Size  Used Avail Use% Mounted on
udev            3.8G     0  3.8G   0% /dev
tmpfs           784M  1.6M  783M   1% /run
/dev/sda1       233G  117G  104G  53% /
tmpfs           3.9G  170M  3.7G   5% /dev/shm
tmpfs           5.0M     0  5.0M   0% /run/lock
```

This output shows the file systems, their sizes, used space, available space, and the percentage of use.

## Displaying Memory Usage with `free`

The `free` command provides information about the system's memory usage. Similar to `df`, it can be made more readable with the `-h` option.

### Default Memory Usage

To see the default memory usage:

```bash
free
```

This command shows memory usage in bytes, which can be cumbersome to interpret.

### Human-Readable Format

To display memory usage in a human-readable format:

```bash
free -h
```

This command will present the memory usage in units such as KB, MB, or GB.

#### Example Output

```plaintext
              total        used        free      shared  buff/cache   available
Mem:           7.7G        2.3G        4.8G         66M        565M        5.0G
Swap:          2.0G          0B        2.0G
```

This output shows the total, used, and free memory, as well as shared memory, buffer/cache, and available memory.

## Displaying Running Processes with `ps`

The `ps` command displays information about running processes. By default, it shows processes running in the current terminal session.

### Default Process List

To see the default process list:

```bash
ps
```

This command shows processes in the current terminal session.

### Viewing All Processes

To view all processes on the system, use the `-e` option:

```bash
ps -e
```

### Full Format Listing

To get a more detailed view of all processes, use the `-ef` option:

```bash
ps -ef
```

#### Example Output

```plaintext
UID        PID  PPID  C STIME TTY          TIME CMD
root         1     0  0 10:22 ?        00:00:01 /sbin/init
root         2     0  0 10:22 ?        00:00:00 [kthreadd]
root         3     2  0 10:22 ?        00:00:00 [rcu_gp]
root         4     2  0 10:22 ?        00:00:00 [rcu_par_gp]
```

### Common Options

- `-e`: Select all processes.
- `-f`: Full format listing.

### Using BSD Syntax

Alternatively, you can use BSD syntax:

```bash
ps aux
```

#### Example Output

```plaintext
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         1  0.0  0.0 103580  1168 ?        Ss   10:22   0:01 /sbin/init
root         2  0.0  0.0      0     0 ?        S    10:22   0:00 [kthreadd]
root         3  0.0  0.0      0     0 ?        I<   10:22   0:00 [rcu_gp]
root         4  0.0  0.0      0     0 ?        I<   10:22   0:00 [rcu_par_gp]
```

## Monitoring System Performance with `top`

The `top` command provides a dynamic, real-time view of running processes. It updates periodically and sorts processes by CPU usage.

### Running `top`

To start `top`:

```bash
top
```

#### Example Output

```plaintext
top - 10:34:01 up  1:12,  1 user,  load average: 0.00, 0.00, 0.00
Tasks: 182 total,   1 running, 181 sleeping,   0 stopped,   0 zombie
%Cpu(s):  0.0 us,  0.1 sy,  0.0 ni, 99.9 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
MiB Mem :   7939.5 total,   5054.5 free,   1550.3 used,   1334.7 buff/cache
MiB Swap:   2048.0 total,   2048.0 free,      0.0 used.   6187.5 avail Mem

  PID USER      PR  NI    VIRT    RES    SHR S  %CPU %MEM     TIME+ COMMAND
 1432 root      20   0  214948   9448   7372 S   0.3  0.1   0:00.03 sshd
 1436 user      20   0   11164   3420   2856 R   0.3  0.0   0:00.01 top
```

Press `q` to exit `top`.

## Killing Processes with `kill`

To terminate a process, use the `kill` command followed by the process ID (PID).

### Example Usage

First, identify the PID of the process you want to terminate. For example, if `Firefox` has PID `1234`:

```bash
ps -ef | grep firefox
```

Then, kill the process:

```bash
kill 1234
```

### Using `kill` with Signals

By default, `kill` sends the `TERM` signal to terminate a process. To use a different signal, such as `KILL`:

```bash
kill -9 1234
```

## Example Commands Summary

Here is a summary of some essential commands and their functions:

1. **Disk Usage**

   ```bash
   df -h
   ```

2. **Memory Usage**

   ```bash
   free -h
   ```

3. **Process Listing**

   ```bash
   ps -e
   ps -ef
   ps aux
   ```

4. **Real-Time Process Monitoring**

   ```bash
   top
   ```

5. **Kill Process**

   ```bash
   kill <PID>
   kill -9 <PID>
   ```

## Conclusion

This tutorial introduced commands for monitoring disk usage, memory usage, and managing running processes in Ubuntu. These commands are crucial for system administration and performance tuning. Future tutorials will delve deeper into advanced system monitoring, process management, and network configuration.
