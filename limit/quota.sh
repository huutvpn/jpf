ENV_FILE="/etc/zipvpn/.env"
if [ ! -f "$ENV_FILE" ]; then
  echo "Token belum diset. Jalankan install.sh"
  exit 1
fi
export $(grep -v '^#' $ENV_FILE | xargs)

#!/bin/bash
quota-trojan-grpc
quota-trojan-ws
quota-trojan-tcp
quota-vmess-ws
quota-vmess-grpc
quota-vmess-ws-orbit
quota-vmess-ws-orbit1
quota-vless-ws
quota-vless-grpc