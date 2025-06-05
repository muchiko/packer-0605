#!/bin/bash

chmod 755 /home/ec2-user

mkdir ~/projects
mkdir ~/data

chmod -R 777 ~/data/

mkdir -p ~/var/log/nginx
mkdir -p ~/var/log/batch
chmod -R 777 ~/var/log

mkdir -p ~/etc/nginx

chown -R ec2-user: ~/etc
chown -R ec2-user: ~/var

echo "OK: 07_crz7_init.sh"
