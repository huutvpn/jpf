ENV_FILE="/etc/zipvpn/.env"
if [ ! -f "$ENV_FILE" ]; then
  echo "Token belum diset. Jalankan install.sh"
  exit 1
fi
export $(grep -v '^#' $ENV_FILE | xargs)

#!/bin/bash
FILE="/root/backup/restore.tar.gz"
tar -xzf $FILE -C /
systemctl daemon-reexec
systemctl restart xray nginx ssh dropbear
