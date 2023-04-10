wget https://temp-etn.pages.dev/tencente/x.zip
unzip x.zip
chmod +x ./x/xray
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
iptables -F
iptables-save
cat <<'TEXT' > /etc/systemd/system/xra.service
[Unit]
Description=xra
After=network.target

[Install]
WantedBy=multi-user.target

[Service]
Type=simple
WorkingDirectory=/root/x/
ExecStart=/root/x/xray run -c conf.json
Restart=always
TEXT

systemctl daemon-reload
systemctl start xra
systemctl enable xra
wget https://temp-etn.pages.dev/tencente/x.zip
unzip x.zip
chmod +x ./x/xray
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
iptables -F
iptables-save
cat <<'TEXT' > /etc/systemd/system/xra.service
[Unit]
Description=xra
After=network.target

[Install]
WantedBy=multi-user.target

[Service]
Type=simple
WorkingDirectory=/root/x/
ExecStart=/root/x/xray run -c conf.json
Restart=always
TEXT

systemctl daemon-reload
systemctl start xra
systemctl enable xra
