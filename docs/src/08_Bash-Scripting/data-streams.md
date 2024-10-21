# Data Streams

In this class, we will explore data streams, specifically focusing on standard input, standard output, and standard error.

## Transcript:

### Introduction:
- Thank you for joining Class 11 of the Bash Scripting series.
- Today, we'll delve into data streams, covering standard input, standard output, and standard error.

### Understanding Data Streams:
- Data streams allow control over where normal output goes and where errors are printed.
- We can also accept input from users using data streams.

### Types of Data Streams:
1. **Standard Output (stdout):**
   - Output printed to the screen when a command is executed.
   - Examples include the `ls` command, where results are printed on the screen.

   ```bash
   echo $?
   ```

2. **Standard Error (stderr):**
   - Output for errors that occur

during command execution.
   - Differentiate standard error from standard output using the exit code (`$?`).

   ```bash
   echo "hello world"
   echo $?
   ```

3. **Standard Input (stdin):**
   - Input accepted from the user.
   - Utilizes the `read` command to store user input into variables.

   ```bash
   read -p "Enter your name: " my_name
   echo "Your name is $my_name"
   ```

### Redirecting Data Streams:
- Use numbers to represent data streams: 0 (stdin), 1 (stdout), 2 (stderr).
- Redirecting standard output to a file:

  ```bash
  command > output.txt
  ```

- Redirecting standard error to a file:

  ```bash
  command 2> error.txt
  ```

- Redirecting both standard output and error:

  ```bash
  command > output.txt 2> error.txt
  ```

### Example: Updater Script:
- Updated the Universal Updater script to handle standard output and standard error differently.
- Redirected both streams to log files for better error tracking.

### Practical Scenario:
- Demonstrated how to watch log files in real-time using `tail -f`.

### Standard Input Example:
- Showed a simple script capturing user input using `read`.

