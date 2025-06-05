#!/bin/bash

sudo yum update -y

sudo timedatectl set-timezone Asia/Tokyo
sudo localectl set-locale LANG=ja_JP.UTF-8

sudo yum install -y gcc gcc-c++
sudo yum install -y libtool
sudo yum install -y git
sudo yum install -y dstat sysstat iotop
sudo yum install -y jq
sudo yum install -y re2c nmap tmux
sudo yum install -y cyrus-sasl-devel zlib-devel libmemcached libmemcached-devel
sudo yum install -y pcre-devel

echo "OK: 01_base_updates.sh"
