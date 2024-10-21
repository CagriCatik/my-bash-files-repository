#!/bin/bash

# Addition
result_addition=$(expr 30 + 10)
echo "Addition: $result_addition"

# Subtraction
result_subtraction=$(expr 30 - 10)
echo "Subtraction: $result_subtraction"

# Division
result_division=$(expr 30 / 10)
echo "Division: $result_division"

# Multiplication
result_multiplication=$(expr 100 \* 4)
echo "Multiplication: $result_multiplication"

# Declare variables
my_num1=100
my_num2=50

# Add variables
result_add_variables=$(expr $my_num1 + 50)
echo "Adding variable to a constant: $result_add_variables"

# Add two variables
result_add_two_variables=$(expr $my_num1 + $my_num2)
echo "Adding two variables: $result_add_two_variables"
