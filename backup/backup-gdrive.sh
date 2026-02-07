#!/bin/bash
DATE=$(date +"%Y-%m-%d")
BACKUP_DIR="/root/backup"
FILE="backup-$DATE.tar.gz"
mkdir -p $BACKUP_DIR
tar -czf $BACKUP_DIR/$FILE /etc/passwd /etc/group /etc/shadow /etc/gshadow /etc/xray /etc/v2ray /etc/trojan-go /etc/ssh /etc/nginx /etc/systemd/system /etc/limit /etc/huutvpn /var/lib
rclone copy $BACKUP_DIR/$FILE gdrive:VPS-BACKUP
rm -f $BACKUP_DIR/$FILE
