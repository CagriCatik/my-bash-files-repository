# Case Statements

In this class, we will explore the concept of case statements in Bash scripting.

## Transcript:

### Introduction:
- Welcome back to the Bash Scripting series!
- In this video, we'll dive into case statements, a powerful tool for creating menus and handling user choices.

### Overview of Case Statements:
- Case statements allow you to perform different actions based on the value of a variable.
- Ideal for creating menu-driven interfaces where users can choose from various options.

### Example Script:
- Let's create a simple script with a menu asking the user about their favorite Linux distribution.
- We'll use a case statement to handle different user choices.

### Script Explanation:
- Declare a variable named `distro` to store user input.
- Use Echo statements to present a menu with numbered options for Linux distributions.
- Read user input into the `distro` variable using the `read` command.

### Case Statement:
- Introduce the case statement syntax:

  ```bash
  case variable in
      pattern1)
          # Commands for pattern1
          ;;
      pattern2)
          # Commands for pattern2
          ;;
      *)
          # Default commands
          ;;
  esac
  ```

### Applying Case Statement:
- Create a case statement using the `distro` variable.
- Define patterns for each option in the menu.
- Execute specific commands based on the user's choice.

### Benefits of Case Statements:
1. **Menu-Driven Interfaces:**
   - Easily create interactive menus for user selection.
   - Improves user experience in script execution.

2. **Code Organization:**
   - Group related actions together within the case statement.
   - Enhances script readability and maintainability.

### Practical Demonstration:
- Run the script and demonstrate how the case statement handles different user inputs.
- Emphasize the versatility of case statements in creating interactive scripts.

### Enhanced Script with a While Loop:
- Modify the script to include a while loop and an exit option.
- Introduce a variable `finished` to control the loop execution.
- Allow the user to exit the script gracefully.


