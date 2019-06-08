apt-get update
wait
apt-get install pptpd
wait
git clone https://github.com/leaftogo/script_pptp.git
wait
cd script_pptp
rm /etc/pptpd.conf
mv ./pptpd.conf /etc/
rm /etc/ppp/chap-secrets
mv ./chap-secrets /etc/ppp/
rm /etc/ppp/pptpd-options
mv ./pptpd-options /etc/ppp/
sed -i '/net.ipv4.ip_forward/ s/\(.*=\).*/\11/' /etc/sysctl.conf
sysctl -p
mv ./testnet.sh /root/
chmod +x /root/testnet.sh
/etc/init.d/procps restart
rm /etc/systemd/system/rc.local.service
mv ./rc.local.service /etc/systemd/system/
mv ./rc.local /etc/
chmod +x /etc/rc.local
systemctl enable rc-local
systemctl start rc-local.service

