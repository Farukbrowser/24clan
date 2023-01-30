#!/bin/bash
# Mod By Dendi Kusnandi
# ==========================================
rm -rf menu
rm -rf ipsaya
rm -rf sdk-fix
rm -rf sshovpnmenu
rm -rf vmessmenu
rm -rf vlessmenu
rm -rf trmenu
rm -rf trgomenu
rm -rf setmenu
rm -rf slowdnsmenu
rm -rf running

#menu
cd /usr/bin
rm -rf menu
rm -rf restart
rm -rf sdkhost
rm -rf install-sdkdns
rm -rf addssh
wget -O install-sdkdns "https://raw.githubusercontent.com/farukbrowser/24clan/main/slowdns/install-sdkdns"
wget -O restart "https://raw.githubusercontent.com/farukbrowser/24clan/main/ssh/restart.sh"
wget -O addssh "https://raw.githubusercontent.com/farukbrowser/24clan/main/ssh/addssh.sh"
wget -O menu "https://raw.githubusercontent.com/farukbrowser/24clan/main/update/menu.sh"
wget -O ipsaya "https://raw.githubusercontent.com/farukbrowser/24clan/main/update/ipsaya.sh"
wget -O sdk-fix "https://raw.githubusercontent.com/farukbrowser/24clan/main/sslh-fix/sdk-fix"
wget -O sshovpnmenu "https://raw.githubusercontent.com/farukbrowser/24clan/main/update/sshovpn.sh"
wget -O vmessmenu "https://raw.githubusercontent.com/farukbrowser/24clan/main/update/vmessmenu.sh"
wget -O vlessmenu "https://raw.githubusercontent.com/farukbrowser/24clan/main/update/vlessmenu.sh"
wget -O trmenu "https://raw.githubusercontent.com/farukbrowser/24clan/main/update/trmenu.sh"
wget -O trgomenu "https://raw.githubusercontent.com/farukbrowser/24clan/main/update/trgomenu.sh"
wget -O setmenu "https://raw.githubusercontent.com/farukbrowser/24clan/main/update/setmenu.sh"
wget -O slowdnsmenu "https://raw.githubusercontent.com/farukbrowser/24clan/main/update/slowdnsmenu.sh"
wget -O running "https://raw.githubusercontent.com/farukbrowser/24clan/main/update/running.sh"
wget -O updatemenu "https://raw.githubusercontent.com/farukbrowser/24clan/main/update/updatemenu.sh"
wget -O sdkhost "https://raw.githubusercontent.com/farukbrowser/24clan/main/ssh/sdkhost.sh"


chmod +x install-sdkdns
chmod +x restart
chmod +x addssh
chmod +x sdkhost
chmod +x menu
chmod +x ipsaya
chmod +x sdk-fix
chmod +x sshovpnmenu
chmod +x vmessmenu
chmod +x vlessmenu
chmod +x trmenu
chmod +x trgomenu
chmod +x setmenu
chmod +x slowdnsmenu
chmod +x running
chmod +x updatemenu
cd
