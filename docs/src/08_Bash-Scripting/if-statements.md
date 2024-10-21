# If Statements and Checking Commands

Welcome to the third part of the Bash Scripting Tutorial series! In this lesson, we'll dive into the world of if statements and explore how they can be used to create more dynamic and flexible scripts.


### Understanding Bash as a Programming Language
Earlier in the course, I mentioned that Bash is like a programming language. Bash is a command interpreter or shell, but it shares features with programming languages. In this video, we'll focus on if statements, a fundamental part of programming.

### Example: Using If Statements
Let's start by creating a simple script. Open your preferred text editor and follow along. I'll use the shebang (`#!`) to specify Bash. Create a variable named `my_num` and set it to 200. Now, let's dive into an if statement.

```bash
#!/bin/bash

my_num=200

if [ $my_num -eq 200 ]; then
    echo "The condition is true"
fi
```

In this example, we check if `my_num` is equal to 200. If true, it echoes "The condition is true."

### Enhancing If Statements
While this if statement is functional, it's more valuable when the condition can change dynamically. Let's modify it:

```bash
#!/bin/bash

my_num=200

if [ $my_num -eq 200 ]; then
    echo "The condition is true"
else
    echo "The condition is not true"
fi
```

Now, we have an else statement. If the initial condition is false, the script executes the else block.

### Combining Conditions with If-Else
Avoid unnecessary code repetition. Instead of using two if statements, combine them with an else statement:

```bash
#!/bin/bash

my_num=200

if [ $my_num -eq 200 ]; then
    echo "The condition is true"
else
    echo "The condition is not true"
fi
```

### Checking for Inequality
You can use `!` to negate a condition or use `-ne` for not equal:

```bash
#!/bin/bash

my_num=200

if [ $my_num -ne 200 ]; then
    echo "The condition is true"
else
    echo "The condition is not true"
fi
```

### Additional Checks
Explore other checks like `-gt` (greater than) or `-lt` (less than). For example:

```bash
#!/bin/bash

my_num=200

if [ $my_num -gt 200 ]; then
    echo "The condition is true"
else
    echo "The condition is not true"
fi
```

### Checking File Existence
You can also check for the presence of files:

```bash
#!/bin/bash

if [ -f ~/my_file ]; then
    echo "The file exists"
else
    echo "The file does not exist"
fi
```

### Using the `which` Command
Integrate the `which` command to check if a command is available:

```bash
#!/bin/bash

command="/usr/bin/h-top"

if command -v $command &> /dev/null; then
    echo "$command is available"
else
    echo "$command is not available"
    sudo apt update && sudo apt install -y h-top
fi

# Run the command
$command
```
