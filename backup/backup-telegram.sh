#!/bin/bash
DATE=$(date +"%Y-%m-%d")
BACKUP_DIR="/root/backup"
FILE="backup-$DATE.tar.gz"
BOT_TOKEN="ISI_TOKEN_BOT"
CHAT_ID="ISI_CHAT_ID"
mkdir -p $BACKUP_DIR
tar -czf $BACKUP_DIR/$FILE /etc/passwd /etc/group /etc/shadow /etc/gshadow /etc/xray /etc/v2ray /etc/trojan-go /etc/ssh /etc/nginx /etc/systemd/system /etc/limit /etc/huutvpn /var/lib
curl -s -X POST https://api.telegram.org/bot$BOT_TOKEN/sendDocument -F chat_id=$CHAT_ID -F document=@$BACKUP_DIR/$FILE -F caption="Backup VPS $DATE"
rm -f $BACKUP_DIR/$FILE
