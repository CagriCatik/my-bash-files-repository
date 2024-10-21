# Scheduling Jobs (Part 1)

Welcome to Class 14 of the "Bash Scripting on Linux (The Complete Guide)" series. In this class, we will delve into scheduling jobs using the `at` command. This is Part 1 of the scheduling jobs concept, so let's get started!

## Transcript:

### Introduction:
- Welcome back to the Bash Scripting series!
- In this episode, we're exploring the concept of scheduling jobs to run at specific times.

### Why Schedule Jobs:
- As scripts become more complex, scheduling them to run at specific times becomes essential.
- Ideal for automating tasks, running scripts overnight, or over the weekend.

### Introducing the `at` Command:
- `at` command allows scheduling one-time execution of commands or scripts.
- Part 1 focuses on `at`, and Part 2 will cover another method.

### Installing `at`:
- Check if `at` is available: `which at`.
- If not installed, install it using package manager (e.g., `sudo apt install at`).

### Creating a Simple Script:
- Create a basic script that logs a message to a file.
- Script contents: 
  ```bash
  logfile=jobresults.log
  echo "Job ran at $(date)" > $logfile
  ```

### Manual Execution of the Script:
- Run the script manually to ensure it works as expected.
- Observe the creation of the `jobresults.log` file.

### Scheduling a Job with `at`:
- Use the `at` command to schedule the script to run at a specific time.
- Example: `at 15:32 -f script.sh` (for 3:32 PM on the same day).

### Checking Scheduled Jobs:
- View the queue of scheduled jobs: `atq`.
- Remove a scheduled job: `atrm <job_number>`.

### Scheduling a Future Job:
- Schedule a job for a specific date and time.
- Example: `at 18:00 August 16 22 -f script.sh` (6 PM on August 16, 2022).

### Managing Scheduled Jobs:
- View the queue with `atq`.
- Remove a scheduled job with `atrm`.

### Conclusion:
- The `at` command is a powerful tool for scheduling one-time jobs.
- Experiment with scheduling jobs for different times and dates.

