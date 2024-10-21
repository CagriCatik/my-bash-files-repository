# Arguments

Welcome to Class 16 of the "Bash Scripting on Linux (The Complete Guide)" series. In this class, we will explore the concept of arguments in bash scripting. Arguments allow you to customize your script's behavior based on user input.

## Transcript:

### Introduction:
- Understanding and utilizing arguments in bash scripts.
- Customizing script behavior based on user input.

### Basic Argument Handling:
- Introduction to the concept of arguments in bash scripts.
- Example script using the `echo` command to display user-entered arguments.

```bash
#!/bin/bash
echo "You entered the argument: $1"
```

### Handling Multiple Arguments:
- Demonstrating the ability to use multiple arguments.
- Example script with three arguments.

```bash
#!/bin/bash
echo "You entered the arguments: $1, $2, $3"
```

### Practical Examples:
- Real-world examples of using arguments in scripts.
- Example script mimicking the `ls -lh` command with a specified directory argument.

```bash
#!/bin/bash
ls -lh "$1"
```

### Advanced Example with Variable:
- Creating a script with a variable that utilizes an argument.
- Script counts lines in a specified directory and displays the result.

```bash
#!/bin/bash
lines=$(ls -lh "$1" | wc -l)
echo "You have $((lines - 1)) objects in the $1 directory."
```

### Argument Validation:
- Addressing the importance of validating user input.
- Example script with an if statement to check the number of arguments.

```bash
#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi
lines=$(ls -lh "$1" | wc -l)
echo "You have $((lines - 1)) objects in the $1 directory."
```


