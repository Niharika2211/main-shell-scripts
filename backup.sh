#!/bin/bash

SOURCE_FOLDER="/home/ubuntu/monthly-logs"

DEST_DIR="/home/ubuntu/backup-min"


TIME_STAMP="$(date +%F_%H_%M_%S)"

echo "Zipping only .log files with timestamp..."

cd "$SOURCE_FOLDER" || exit 1

tar -czf "$DEST_DIR/backup_$TIME_STAMP.tar.gz" *.log

echo "✅ Backup completed: Only .log files archived"