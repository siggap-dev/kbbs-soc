===================================== Install Filebeat Centos 6 ==============================================

1. Open command, log as root
2. curl https://raw.githubusercontent.com/siggap-dev/kbbs-soc/main/filebeat/centos6-install-filebeat.sh -o centos6-install-filebeat.sh
3. chmod 755 centos6-install-filebeat.sh
4. ./centos6-install-filebeat.sh
5. cd /usr/share/filebeat/bin
6. ./filebeat test config -c /etc/filebeat/filebeat.yml --path.home /usr/share/filebeat --path.data /var/lib/filebeat
7. pastikan output : Config OK
8. ./filebeat test output -c /etc/filebeat/filebeat.yml --path.home /usr/share/filebeat --path.data /var/lib/filebeat
9. pastikan tidak ada error
10. ./filebeat setup -c /etc/filebeat/filebeat.yml --path.home /usr/share/filebeat --path.data /var/lib/filebeat
10. sudo service filebeat start