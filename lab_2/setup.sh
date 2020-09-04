#!/bin/bash
echo "### Welcome to COSS Virtual Training ###"
yum install ansible -y

echo "# ansible version is -->"

ansible --version

echo " --------------------8-------------------------

#check the system connection #"
ping -c1 servera.lab.example.com
ping -c1 serverb.lab.example.com
ping -c1 serverc.lab.example.com
ping -c1 serverd.lab.example.com

echo " -----------------------O-------------------

##### Congratulations your Lab is ready #####"
echo "##### In this exercise, you will create a new static inventory containing hosts and groups #####."

