#!/bin/bash

sudo rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch
cd /etc/yum.repos.d/
curl https -o elastic.repo
cd
sudo yum install filebeat
mkdir /root/certs/elasticsearch
cd /root/certs/elasticsearch
curl https://raw.githubusercontent.com/siggap-dev/siem-siggap/main/kbbs-siem/certs/elastic/ca.crt -o ca.crt
curl https://raw.githubusercontent.com/siggap-dev/siem-siggap/main/kbbs-siem/certs/elastic/ca.key -o ca.key
cd
cd /etc/filebeat/
rm -f filebeat.yml


