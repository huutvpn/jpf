ENV_FILE="/etc/zipvpn/.env"
if [ ! -f "$ENV_FILE" ]; then
  echo "Token belum diset. Jalankan install.sh"
  exit 1
fi
export $(grep -v '^#' $ENV_FILE | xargs)

#!/bin/bash
data=( `ls /etc/cobek/limit/vmess/quota`);
for user in "${data[@]}"
do
vlimit=$(cat /etc/cobek/limit/vmess/quota/$user)
vasli=$(cat /etc/cobek/vmess/$user)
if [[ $vasli -gt $vlimit ]]; then
sed -i "/$user/d" /etc/xray/vmess*
rm /etc/cobek/vmess/$user
rm /etc/cobek/cache/*/$user
rm /etc/cobek/limit/vmess/quota/$user
nais=3
else
echo > /dev/null
fi
sleep 0.1
done
if [[ $nais -gt 1 ]]; then
systemctl restart vmess-ws
systemctl restart vmess-grpc
else
echo > /dev/null
fi