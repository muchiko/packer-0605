#!/bin/bash

sudo yum install -y zsh

# /etc/passwd

sudo yum install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm

curl -s -O https://d1wk0tztpsntt1.cloudfront.net/linux/latest/install
sudo bash install
rm install

sudo yum install amazon-cloudwatch-agent

sudo curl -sL https://rpm.nodesource.com/setup_18.x | sudo bash -
sudo yum install nsolid -y
sudo yum install nodejs -y

sudo tee /etc/profile.d/editor.sh <<EOF
export VISUAL=vim
export EDITOR=vim
EOF
source /etc/profile.d/editor.sh

echo "OK: 05_aws_updates.sh"
