#!/bin/sh
export LANG=en_US.UTF-8

mkdir -p /etc/hysteria
wget -q -O /etc/hysteria/hysteria --no-check-certificate https://github.com/daywincs/HerokuHysteria/blob/main/hysteria-linux-amd64
wget -q -O /etc/hysteria/ca.crt --no-check-certificate https://github.com/daywincs/HerokuHysteria/blob/main/ca.crt
wget -q -O /etc/hysteria/ca.key --no-check-certificate https://github.com/daywincs/HerokuHysteria/blob/main/ca.key

chmod 755 /etc/hysteria/hysteria


cat <<EOF > /etc/hysteria/config.json
{
  "listen": ":9527",
  "cert": "/etc/hysteria/ca.crt",
  "key": "/etc/hysteria/ca.key",
  "obfs": "password",
  "up_mbps": 100,
  "down_mbps": 100
}
EOF

./etc/hysteria/hysteria-linux-amd64 -c config.json server
