#!/bin/bash
# Mod By Dendi Kusnandi
# ==========================================
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
domain=$(cat /etc/xray/domain)
sdkdomain=$(cat /root/nsdomain)
sdkkey=$(cat /etc/slowdns/server.pub)
clear
read -p "Username : " Login
read -p "Password : " Pass
read -p "Expired (Days): " masaaktif

IP=$(wget -qO- ipinfo.io/ip);
ws="$(cat ~/log-install.txt | grep -w "Websocket TLS" | cut -d: -f2|sed 's/ //g')"
ws2="$(cat ~/log-install.txt | grep -w "Websocket None TLS" | cut -d: -f2|sed 's/ //g')"

ssl="$(cat ~/log-install.txt | grep -w "Stunnel5" | cut -d: -f2)"
sqd="$(cat ~/log-install.txt | grep -w "Squid" | cut -d: -f2)"
ovpn="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
ovpn2="$(netstat -nlpu | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
clear
systemctl stop client-sdkdns
systemctl stop server-sdkdns
pkill sdkdns-server
pkill sdkdns-client
systemctl enable client-sdkdns
systemctl enable server-sdkdns
systemctl start client-sdkdns
systemctl start server-sdkdns
systemctl restart client-sdkdns
systemctl restart server-sdkdns
systemctl restart ws-tls
systemctl restart ws-nontls
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
expi="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
hariini=`date -d "0 days" +"%Y-%m-%d"`
expi=`date -d "$masaaktif days" +"%Y-%m-%d"`
echo -e ""
echo -e "=============================="
echo -e "Informasi SSH & OpenVPN"
echo -e "=============================="
echo -e "Username: $Login"
echo -e "Password: $Pass"
echo -e "Created: $hariini"
echo -e "Expired: $expi"
echo -e "===========HOST-SSH==========="
echo -e "IP/Host: $IP"
echo -e "Domain SSH: $domain"
echo -e "Domain Cloudflare: $domain"
echo -e "===========SLOWDNS==========="
echo -e "Domain Name System(DNS): 8.8.8.8"
echo -e "Name Server(NS): $sdkdomain"
echo -e "DNS PUBLIC KEY: $sdkkey"
echo -e "Domain SlowDNS: $sdkdomain"
echo -e "=========Service-Port========="
echo -e "SlowDNS: 443,22,109,143"
echo -e "OpenSSH: 22"
echo -e "Dropbear: 443, 109, 143"
echo -e "SSL/TLS: 443"
echo -e "SSH Websocket SSL/TLS: 443"
echo -e "SSH Websocket HTTP: 8880"
echo -e "BadVPN UDPGW: 7100,7200,7300"
echo -e "Proxy Squid: 8080, 3128"
echo -e "OVPN Websocket: 2086"
echo -e "OVPN Port TCP: $ovpn"
echo -e "OVPN Port UDP: $ovpn2"
echo -e "OVPN Port SSL: 990"
echo -e "OVPN TCP: http://$IP:89/tcp.ovpn"
echo -e "OVPN UDP: http://$IP:89/udp.ovpn"
echo -e "OVPN SSL: http://$IP:89/ssl.ovpn"
echo -e "=============================="
echo -e "Payload Websocket SSL/TLS"
echo -e "=============================="
echo -e "GET wss://bug.com/ HTTP/1.1[crlf]Host: [host][crlf]Upgrade: websocket[crlf][crlf]"
echo -e "=============================="
echo -e "Payload Websocket HTTP"
echo -e "=============================="
echo -e "GET / HTTP/1.1[crlf]Host: [host][crlf]Upgrade: websocket[crlf][crlf]"
echo -e "=============================="
echo -e "Script Mod By Dendi Kusnandi"
