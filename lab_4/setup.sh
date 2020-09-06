#!/bin/bash
mkdir -p /home/student/deploy-adhoc
ssh root@servera.lab.example.com useradd devops
scp -rv devops root@servera.lab.example.com:/etc/sudoers.d/ 
cp -rv ansible.cfg /home/student/deploy-adhoc/ansible.cfg
cp -rv inventory /home/student/deploy-adhoc/inventory


