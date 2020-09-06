#!/bin/bash
mkdir -p /home/student/data-secret/inventory
cp ansible.cfg secret.yml password.txt /home/student/data-secret/
cp hosts  /home/student/data-secret/inventory
ansible servera.lab.example.com -m user -a "name=devops groups=wheel state=present" -u student -b -i inventory

ansible-vault encrypt /home/student/data-secret/secret.yml  --vault-password-file=password.txt
echo " type the password as 'redhat'"
ssh student@servera.lab.example.com sudo passwd devops


echo "type the password as 'redhat'"
ssh-copy-id devops@servera.lab.example.com

sudo chown -R student:student /home/student/data-secret/

sudo chmod -R 775 /home/student/data-secret/


