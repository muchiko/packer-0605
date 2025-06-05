#!/bin/bash

sudo amazon-linux-extras install -y nginx1

sudo curl -L https://toolbelt.treasuredata.com/sh/install-amazon2-td-agent3.sh | sh

sudo yum install -y sendmail

sudo amazon-linux-extras enable ansible2

sudo yum install -y ansible

echo "OK: 03_nginx_updates.sh"
