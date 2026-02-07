#!/bin/bash
FILE="/root/backup/restore.tar.gz"
tar -xzf $FILE -C /
systemctl daemon-reexec
systemctl restart xray nginx ssh dropbear
