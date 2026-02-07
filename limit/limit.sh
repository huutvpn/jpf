ENV_FILE="/etc/zipvpn/.env"
if [ ! -f "$ENV_FILE" ]; then
  echo "Token belum diset. Jalankan install.sh"
  exit 1
fi
export $(grep -v '^#' $ENV_FILE | xargs)

#!/bin/bash
limit-ip-trojan
limit-ip-vless
limit-ip-vmess
limit-ip-ssh
limit-quota-vless
limit-quota-vmess
limit-quota-trojan
