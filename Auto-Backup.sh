#!/bin/bash

# Backup Script

# Check if the correct number of arguments is provided
if [ $# -ne 3 ]; then
    echo "Usage: $0 <source_directory_or_file> <destination_directory> <log_file>"
    exit 1
fi

# Assign arguments to variables
SOURCE=$1
DEST_DIR=$2
LOG_FILE=$3
DATE=$(date +'%Y-%m-%d_%H-%M-%S')        # Timestamp for backup
BACKUP_NAME="backup_$DATE.tar.gz"        # Backup file name

# Ensure the destination directory exists/
if [ ! -d "$DEST_DIR" ]; then
    mkdir -p "$DEST_DIR"
fi

# Log start of backup
echo "[$(date +'%Y-%m-%d %H:%M:%S')] Starting backup of $SOURCE" >> "$LOG_FILE"

# Determine if the source is a directory or a file
if [ -d "$SOURCE" ]; then
    # If the source is a directory
    tar -czf "$DEST_DIR/$BACKUP_NAME" -C "$SOURCE" .
elif [ -f "$SOURCE" ]; then
    # If the source is a file
    tar -czf "$DEST_DIR/$BACKUP_NAME" -C "$(dirname "$SOURCE")" "$(basename "$SOURCE")"
else
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] Error: $SOURCE is not a valid file or directory." >> "$LOG_FILE"
    exit 1
fi

# Check if the backup was successful
if [ $? -eq 0 ]; then
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] Backup successful: $BACKUP_NAME" >> "$LOG_FILE"
else
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] Backup failed!" >> "$LOG_FILE"
    exit 1
fi

# Optional: Remove backups older than 7 days
find "$DEST_DIR" -type f -name "*.tar.gz" -mtime +7 -exec rm {} \;

# Log end of backup
echo "[$(date +'%Y-%m-%d %H:%M:%S')] Backup completed." >> "$LOG_FILE"

exit 0
