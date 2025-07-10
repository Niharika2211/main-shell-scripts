# 🗂️ Log Backup Script with Timestamp (Bash + tar)

This repo contains a Bash script that creates a timestamped `.tar.gz` archive of all `.log` files from a specified source directory. Designed for use in basic automation, cron jobs, or learning DevOps scripting.

---

## 📌 Script Overview

- Archives `.log` files only
- Adds a timestamp to the backup filename
- Stores the archive in a destination folder

### 🔧 Script: `backup.sh`

```bash
#!/bin/bash

SOURCE_FOLDER="/home/ubuntu/monthly-logs"
DEST_DIR="/home/ubuntu/backup-min"
TIME_STAMP="$(date +%F_%H_%M_%S)"

echo "Zipping only .log files with timestamp..."

cd "$SOURCE_FOLDER" || exit 1

tar -czf "$DEST_DIR/backup_$TIME_STAMP.tar.gz" *.log

echo "✅ Backup completed: Only .log files archived"
