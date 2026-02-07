#!/bin/bash
clear
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo " HUUTVPN JP INSTALLER"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# update menu
wget -q https://raw.githubusercontent.com/huutvpn/jp/main/updatemenu.sh -O /usr/bin/updatemenu
chmod +x /usr/bin/updatemenu

# install ssh
bash ssh/ssh.sh

# install ssh ws
bash sshws/sshws.sh

# install xray
bash xray/xray.sh

echo "INSTALL SELESAI ✅"
