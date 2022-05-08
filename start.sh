mkdir -p /etc/hysteria
wget -q -O /etc/hysteria/hysteria --no-check-certificate https://github.com/daywincs/HerokuHysteria/blob/main/hysteria-linux-amd64
wget -q -O /etc/hysteria/ca.crt --no-check-certificate https://github.com/daywincs/HerokuHysteria/blob/main/ca.crt
wget -q -O /etc/hysteria/ca.key --no-check-certificate https://github.com/daywincs/HerokuHysteria/blob/main/ca.key
wget -q -O /etc/hysteria/config.json --no-check-certificate https://github.com/daywincs/HerokuHysteria/blob/main/config.json
chmod 755 /etc/hysteria/hysteria
./etc/hysteria/hysteria -c /etc/hysteria/hysteria/config.json server
