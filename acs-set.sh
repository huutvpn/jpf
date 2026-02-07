ENV_FILE="/etc/zipvpn/.env"
if [ ! -f "$ENV_FILE" ]; then
  echo "Token belum diset. Jalankan install.sh"
  exit 1
fi
export $(grep -v '^#' $ENV_FILE | xargs)

#!/bin/bash
domainSock_dir="/run/xray";! [ -d $domainSock_dir ] && mkdir  $domainSock_dir
chown www-data.www-data $domainSock_dir

systemctl restart xray
