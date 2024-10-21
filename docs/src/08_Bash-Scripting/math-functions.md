# Basic Math Functions

In this tutorial, we'll delve into basic math functions in Bash scripting. While not the most frequent task in Bash scripting, understanding how to perform mathematical operations is essential. We'll cover addition, subtraction, multiplication, division, and using variables in math expressions.

## 1. Introduction to Math Functions
Bash handles math functions differently from some other programming languages. Unlike Python, where you can directly perform operations like `30 + 10`, Bash requires the use of the `expr` command to evaluate expressions.

## 2. Addition and Subtraction
To add or subtract numbers, use the `expr` command followed by the numbers and the operation:

```bash
# Addition
expr 30 + 10

# Subtraction
expr 30 - 10
```

Remember to escape special characters like the plus or minus sign if needed.

## 3. Division and Multiplication
For division, change the operation to a forward slash, and for multiplication, escape the asterisk:

```bash
# Division
expr 30 / 10

# Multiplication
expr 100 \* 4
```

Note the need to escape the asterisk to avoid conflicts with Bash wildcard usage.

## 4. Using Variables in Math Expressions
You can use variables in math expressions. Here's an example:

```bash
# Declare variables
my_num1=100
my_num2=50

# Add variables
expr $my_num1 + 50

# Add two variables
expr $my_num1 + $my_num2
```

Variables make it easy to reuse values in mathematical operations.

