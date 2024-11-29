sudo apt-get update -y
sudo apt-get install -y wget gnupg2 net-tools
wget https://repo.zabbix.com/zabbix/6.0/debian/pool/main/z/zabbix-release/zabbix-release_latest+debian12_all.deb
sudo dpkg -i zabbix-release_latest+debian12_all.deb
sudo apt-get update -y
sudo apt-get install -y zabbix-agent2 zabbix-agent2-plugin-*
sudo systemctl enable zabbix-agent2
sudo systemctl restart zabbix-agent2
sudo systemctl status zabbix-agent2 --no-pager
