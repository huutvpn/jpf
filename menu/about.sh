ENV_FILE="/etc/zipvpn/.env"
if [ ! -f "$ENV_FILE" ]; then
  echo "Token belum diset. Jalankan install.sh"
  exit 1
fi
export $(grep -v '^#' $ENV_FILE | xargs)

#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"

clear
figlet `DANS VPN`
echo ""
read -n 1 -s -r -p "PRESS [ ENTER ] KELUAR MENU"
menu



