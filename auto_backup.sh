#!/bin/bash

SOURCE_DIR="/home/user/dane"
BACKUP_DIR="/backup"
RETENTION_DAYS=90
LOG_FILE="/var/log/weekly_backup.log"
LOCK_FILE="/tmp/weekly_backup.lock"

DATE=$(date +%Y-%m-%d)
BACKUP_NAME="dane_$DATE.tar.gz"
BACKUP_PATH="$BACKUP_DIR/$BACKUP_NAME"

log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" >> "$LOG_FILE"
}
