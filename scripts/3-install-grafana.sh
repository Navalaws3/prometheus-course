#!/bin/bash
#echo 'deb https://packages.grafana.com/oss/deb stable main' >> /etc/apt/sources.list
#curl https://packages.grafana.com/gpg.key | sudo apt-key add -
#sudo apt-get update
#sudo apt-get -y install grafana

wget https://dl.grafana.com/oss/release/grafana-7.2.0~beta2-1.x86_64.rpm
sudo yum install grafana-7.2.0~beta2-1.x86_64.rpm

systemctl daemon-reload
systemctl start grafana-server
systemctl enable grafana-server.service
