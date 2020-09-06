#!/bin/bash
mkdir -p /home/student/playbook-review
cp ansible.cfg inventory /home/student/playbook-review/
yum insatll httpd -y 
systemctl start httpd.service
systemctl enable httpd.service
firewall-cmd --permanent --add-service=http
firewall-cmd --reload
mkdir /var/www/html/lab
cp index.php /var/www/html/lab/index.php
