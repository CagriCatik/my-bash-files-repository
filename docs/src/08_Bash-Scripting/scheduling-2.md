# Scheduling Jobs (Part 2)

Welcome to Class 15 of the "Bash Scripting on Linux (The Complete Guide)" series. In this class, we'll continue our exploration of scheduling jobs. If you haven't watched Part 1, you might want to check that out first. In this lesson, we'll focus on scheduling jobs using cron.

## Transcript:

### Introduction:
- Scheduling jobs using cron, a continuation from the previous lesson.
- Making changes to our script for better practices and understanding.
- Let's dive right into scheduling jobs via cron.

### Update to Script:
- Best practice: Use fully qualified paths for commands in your scripts.
- Example: Instead of `echo`, use `/usr/bin/echo`. Enhances security and avoids path-related issues.

### Understanding Cron:
- The cron syntax: minute hour day month day_of_week command.
- Each section can have specific values, ranges, or wildcards (`*`).

### Editing Crontab:
- Use `crontab -e` to edit your crontab file.
- Comments at the top often provide a legend for understanding the cron syntax.

### Example Cron Job:
- Weekly job: `30 1 * * 5 /usr/local/bin/script.sh`.
  - This job runs every Friday at 1:30 AM.
  - Explanation of each section in the cron syntax.
  - The asterisk (`*`) is a wildcard indicating any value is acceptable.

### Modifying Cron Jobs:
- Adjusting the cron job to run more frequently or at different times.
- Use `crontab -e` to edit and save the changes.

### Editing Another User's Crontab:
- Use `sudo crontab -u <username> -e` to edit another user's crontab.
- Requires root privileges to modify other users' crontabs.

### Conclusion:
- Cron is a powerful tool for automating recurring tasks.
- Practice scheduling jobs with different frequencies and times.
- Next lesson: Exploring command-line arguments in bash scripting.

