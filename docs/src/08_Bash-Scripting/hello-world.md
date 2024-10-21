# Bash Scripting Tutorial: Hello World Example

In this tutorial, we'll guide you through writing a simple Bash script using the "Hello World" example. The script will display a greeting message and print the current working directory.

## Step 2: Understand the Basics

Ensure you understand the basics of Bash scripting and how to open a terminal, enter commands, and interact with the shell.

## Step 3: Create Your First Script

Open your preferred text editor (in the video, Nano is used) and create a new file. In this example, we'll name it `hello_world.sh`. Make sure to use the `.sh` extension to indicate it's a Bash script.

```bash
nano hello_world.sh
```

## Step 4: Write the Script

In your text editor, enter the following lines:

```bash
#!/bin/bash
echo "Hello World"
pwd
```

- The first line (`#!/bin/bash`) is known as a shebang. It specifies the interpreter to be used (in this case, Bash).
- The next line (`echo "Hello World"`) prints the greeting message.
- The third line (`pwd`) displays the current working directory.

## Step 5: Save and Exit

Save the file by pressing `Ctrl + O`, then press `Enter`. To exit Nano, press `Ctrl + X`.

## Step 6: Make the Script Executable

In the terminal, make the script executable using the `chmod` command:

```bash
chmod +x hello_world.sh
```

## Step 7: Run the Script

Execute the script using the following command:

```bash
./hello_world.sh
```

You should see the output:

```
Hello World
/path/to/your/current/working/directory
```
