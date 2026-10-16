#!/usr/bin/env bash

#takebackupDemo.bash

# Source directory
SOURCE="/home/ec2-user/rehanshaik/scripts/bashTasks"

# Backup destination
DEST="/home/ec2-user/rehanshaik/scripts/bashTasks.zip"

# Check whether source directory exists
if [[ ! -d "$SOURCE" ]]; then
    echo "Error: Source directory does not exist!"
    exit 1
fi

# Create ZIP backup
if sudo zip -r "$DEST" "$SOURCE"; then
    echo "Backup completed successfully!"
    echo "Backup location: $DEST"
else
    echo "Backup failed!"
    exit 1
fi
