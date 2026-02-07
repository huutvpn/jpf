ENV_FILE="/etc/zipvpn/.env"
if [ ! -f "$ENV_FILE" ]; then
  echo "Token belum diset. Jalankan install.sh"
  exit 1
fi
export $(grep -v '^#' $ENV_FILE | xargs)

#!/bin/bash
echo -n > /var/log/xray/access.log
sleep 4
data=( `ls /etc/cobek/limit/vless/ip`);
for user in "${data[@]}"
do
iplimit=$(cat /etc/cobek/limit/vless/ip/$user)
ehh=$(cat /var/log/xray/vless.log | grep "$user" | cut -d " " -f 3 | sed 's/tcp://g' | cut -d ":" -f 1 | sort | uniq);
cekcek=$(echo -e "$ehh" | wc -l);
if [[ $cekcek -gt $iplimit ]]; then
disable-vless  $user $cekcek $iplimit "$ehh"
nais=3
else
echo > /dev/null
fi
sleep 0.1
done
if [[ $nais -gt 1 ]]; then
huutvpn
systemctl restart vless-ws
systemctl restart vless-grpc
else
echo > /dev/null
fi
