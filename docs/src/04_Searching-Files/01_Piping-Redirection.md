# Redirection and Piping in Ubuntu

In this tutorial, we will delve into the concepts of redirection and piping in the Ubuntu command line environment. Redirection and piping are powerful features that allow us to manipulate the input and output streams of commands and processes, enabling efficient data processing and management.

## Introduction to Redirection and Piping

Redirection and piping are mechanisms used to manipulate the input and output streams of commands and processes in a Unix-based operating system such as Ubuntu. 

### Redirection

Redirection involves changing the default input or output sources of a command or process. This can be achieved using redirection operators such as `>` (greater than) and `<` (less than).

- `>` (greater than): Redirects the output of a command to a file.
- `<` (less than): Redirects the input of a command from a file.

### Piping

Piping involves chaining multiple commands together, where the output of one command serves as the input to another command. This is achieved using the pipe character `|`.

## Practical Examples

### Basic Piping

Let's start with a basic example of piping. Suppose we have a command `ls` that lists the contents of a directory. We can pipe its output to the `less` command for easy navigation:

```bash
ls | less
```

This command will display the output of `ls` in a paginated format using `less`.

### Redirection to a File

Next, let's redirect the output of a command to a file. For example, suppose we want to save the output of `ls` to a file named `my_files`:

```bash
ls > my_files
```

Now, the output of `ls` is stored in the file `my_files`.

### Piping with Word Count

We can use piping to count the number of lines, words, and characters in a file. For example, let's count the statistics of the file `my_files`:

```bash
wc my_files
```

Alternatively, we can achieve the same result using piping:

```bash
cat my_files | wc
```

Both commands will display the number of lines, words, and characters in `my_files`.

### Redirecting and Piping Processes

Lastly, let's redirect the output of the `ps` command, which displays information about processes, to a file named `processes`:

```bash
ps -ef > processes
```

We can then count the statistics of the `processes` file using either redirection or piping:

```bash
wc processes
```

or

```bash
cat processes | wc
```

Both commands will provide statistics about the processes stored in the `processes` file.
