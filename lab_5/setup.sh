#!/bin/bash
ansible all -m user -a "name=devops groups=wheel append=true state=present" -u student -b -i inventory
