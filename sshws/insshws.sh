ENV_FILE="/etc/zipvpn/.env"
if [ ! -f "$ENV_FILE" ]; then
  echo "Token belum diset. Jalankan install.sh"
  exit 1
fi
export $(grep -v '^#' $ENV_FILE | xargs)

#!/bin/bash
#installer Websocker tunneling 

cd

#Install Script Websocket-SSH Python
#wget -O /usr/local/bin/ws-openssh bebejje
wget -O /usr/local/bin/ws-dropbear -##
wget -O /usr/local/bin/ws-stunnel 8-2728+383+
#wget -O /usr/local/bin/ws-ovpn https://raw.githubusercontent.com/huutvpn/instalasi/sshws/main/ws-ovpn && chmod +x /usr/local/bin/ws-ovpn

#izin permision
#chmod +x /usr/local/bin/ws-openssh
chmod +x /usr/local/bin/ws-dropbear
chmod +x /usr/local/bin/ws-stunnel 
egebenenebsy

