ENV_FILE="/etc/zipvpn/.env"
if [ ! -f "$ENV_FILE" ]; then
  echo "Token belum diset. Jalankan install.sh"
  exit 1
fi
export $(grep -v '^#' $ENV_FILE | xargs)

#!/bin/bash
bash /root/instalasi-main/backup/backup-huutvpn
bash /root/instalasi-main/backup/backup-gdrive.sh
