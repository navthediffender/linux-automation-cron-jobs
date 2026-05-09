# Linux Automation with Cron Jobs

## Project Overview

This project demonstrates basic Linux automation using Bash scripting and cron jobs.

The aim of the project is to automate a simple backup task. The Bash script creates a dated backup folder, copies files from a source directory, and writes a log entry each time the script runs.

This project was created as part of my practical learning in Linux, Bash scripting, system administration, and cybersecurity fundamentals.

## Skills Practised

- Linux command line
- Bash scripting
- File and directory management
- Cron job scheduling
- Basic system administration
- Logging and automation
- Troubleshooting script behaviour

## Files in This Repository

| File | Purpose |
|---|---|
| `backup_script.sh` | Bash script used to create backups and write log entries |
| `netman_job.jpg` | Screenshot evidence of cron/job configuration |
| `prank_job.jpg` | Screenshot evidence of cron/job testing |
| `README.md` | Project documentation |

## How the Script Works

The script:

1. Sets a source folder.
2. Creates a backup folder if it does not already exist.
3. Creates a dated backup folder using the current date and time.
4. Copies files into the backup folder.
5. Writes a log entry showing when the backup was completed.

## Example Cron Job

This example would run the script every day at 9:00 AM:

```bash
0 9 * * * /home/user/backup_script.sh
