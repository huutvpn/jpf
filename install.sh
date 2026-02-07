#!/bin/bash
clear

TOKEN_FILE="/etc/huutvpn/token"

echo "━━━━━━━━━━━━━━━━━━━━━━━"
echo " HUUTVPN JP INSTALLER"
echo "━━━━━━━━━━━━━━━━━━━━━━━"

# set token
if [ ! -f $TOKEN_FILE ]; then
    read -p "Masukkan Token: " TOKEN
    mkdir -p /etc/huutvpn
    echo "$TOKEN" > $TOKEN_FILE
    chmod 600 $TOKEN_FILE
fi

echo "Token tersimpan ✅"

# install menu updater
wget -q https://raw.githubusercontent.com/huutvpn/jp/main/updatemenu.sh -O /usr/bin/updatemenu
chmod +x /usr/bin/updatemenu

echo "Install selesai, jalankan: updatemenu"
