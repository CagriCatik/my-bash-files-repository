# Functions

In this class, we will dive into the concept of functions in Bash scripting.

## Transcript:

### Introduction:
- Welcome to Class 12 of the Bash Scripting series.
- In this lesson, we'll explore the concept of functions in Bash scripting.

### Understanding Functions:
- Functions in Bash allow you to define a set of tasks and call them with a single function name.
- Functions help consolidate and organize code, reducing redundancy.

### Example using the Updater Script:
- Revisit the Universal Updater script.
- Identify repetitive code in the script, specifically around checking exit status.

### Creating a Function:
- Declare a function using the syntax:

  ```bash
  function_name() {
      # Commands and logic of the function
  }
  ```

  For example:

  ```bash
  check_exit_status() {
      if [ $? -ne 0 ]; then
          echo "Error: Command failed."
      fi
  }
  ```

### Calling the Function:
- Instead of repeating the same code, call the function:

  ```bash
  update_command
  check_exit_status
  ```

### Benefits of Functions:
1. **Code Organization:**
   - Functions help organize code by grouping related commands.
   - Improves script readability and maintainability.

2. **Code Reusability:**
   - Write a set of commands once in a function and call it multiple times.
   - Reduces redundancy and minimizes errors.

3. **Easy Maintenance:**
   - Update logic or fix issues in one place (the function) instead of multiple occurrences.

### Practical Demonstration:
- Applied functions to the Updater script, consolidating repetitive code.
- Emphasized how functions enhance script efficiency and ease of maintenance.

