#!/bin/bash
yum update -y
yum install epel-release -y
yum install nginx -y
yum install setools-console -y
yum install policycoreutils-python -y
yum install setools -y
yum install -y setroubleshoot-server
sed -i 's/80/8041/' /etc/nginx/nginx.conf
setsebool -P nis_enabled 1
systemctl enable nginx.service
systemctl start nginx
curl 127.0.0.1:8041
