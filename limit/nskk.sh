ENV_FILE="/etc/zipvpn/.env"
if [ ! -f "$ENV_FILE" ]; then
  echo "Token belum diset. Jalankan install.sh"
  exit 1
fi
export $(grep -v '^#' $ENV_FILE | xargs)

#!/bin/bash
now=$(cat /root/.masa)
if [ $now = exp ]; then
#expired stopped
systemctl stop trojan-tcp
systemctl stop ntls
else
echo > /dev/null
fi