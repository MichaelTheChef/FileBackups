#!/bin/bash

SOURCE_DIR="/path/to/source"
DEST_DIR="/path/to/backup"

TIMESTAMP=$(date +"%Y%m%d%H%M%S")

BACKUP_DIR="$DEST_DIR/backup_$TIMESTAMP"
mkdir -p "$BACKUP_DIR"

cp -R "$SOURCE_DIR" "$BACKUP_DIR"

if [ $? -eq 0 ]; then
    echo "Backup created successfully in: $BACKUP_DIR"
else
    echo "Backup failed."
fi
