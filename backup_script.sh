#!/bin/bash

# Linux Backup Automation Script
# This script creates a dated backup folder, copies files into it,
# and writes a log entry each time it runs.

SOURCE_DIR="$HOME/Documents"
BACKUP_DIR="$HOME/backups"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
DESTINATION="$BACKUP_DIR/backup_$DATE"
LOG_FILE="$BACKUP_DIR/backup_log.txt"

# Create backup directory if it does not exist
mkdir -p "$DESTINATION"

# Copy files from source to backup folder
cp -r "$SOURCE_DIR"/* "$DESTINATION" 2>/dev/null

# Write result to log file
echo "Backup completed on $DATE from $SOURCE_DIR to $DESTINATION" >> "$LOG_FILE"

echo "Backup completed successfully."
