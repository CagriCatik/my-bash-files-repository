# Command-Line Text Processing on Ubuntu

## Introduction

In this tutorial, we will delve into advanced text processing techniques using command-line tools on Ubuntu. Specifically, we will focus on `grep` and `awk`, two powerful utilities for searching and manipulating text data efficiently.

## 1. Understanding `grep`

The `grep` command is a versatile tool for searching text patterns within files. Here's how to use it:

```bash
grep [options] pattern [file...]
```

- `[options]`: Various flags to modify search behavior.
- `pattern`: The text pattern to search for.
- `[file...]`: Optional file(s) to search within.

## Example Usage:

```bash
# Search for the pattern "inet" in network information
grep -w "inet" network_info.txt
```

## 2. Exploring `awk` (GAWK)

`awk` is a powerful pattern scanning and text processing language. It excels at extracting and manipulating data from structured text files.

## Basic Syntax:

```bash
awk -F field_separator 'pattern { action }' file
```

- `-F field_separator`: Specifies the field separator.
- `'pattern { action }'`: Defines a pattern-action pair.
- `file`: The input file.

## Example Usage:

```bash
# Print the first field of each line in a file separated by ":"
awk -F ":" '{ print $1 }' /etc/passwd
```

## 3. Combining `grep` and `awk` with Pipes

Piping allows us to chain commands together, enabling complex text processing tasks in a single line.

## Example:

```bash
# Extract IP addresses from network configuration using grep and awk
ifconfig | grep -oP 'inet \K[\d.]+' | awk '{ print $2 }' > current_ip.txt
```
