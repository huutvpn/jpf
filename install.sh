#!/bin/bash
clear
cd "$(dirname "$0")"

echo "🚀 ZIPVPN_SECURE INSTALLER"
sleep 1

chmod +x *.sh
chmod +x */*.sh

dos2unix *.sh */*.sh >/dev/null 2>&1

systemctl daemon-reexec 2>/dev/null
systemctl daemon-reload 2>/dev/null

for svc in ssh dropbear xray sshws ws-epro; do
    systemctl enable $svc 2>/dev/null
    systemctl restart $svc 2>/dev/null
done

if [ -f menu/menu.sh ]; then
    bash menu/menu.sh
else
    echo "❌ menu.sh tidak ditemukan"
fi
