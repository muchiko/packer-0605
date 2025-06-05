#!/bin/bash

sudo yum remove -y mariadb-libs
sudo yum install -y https://dev.mysql.com/get/mysql84-community-release-el7-1.noarch.rpm
sudo yum-config-manager --disable mysql-8.4-lts-community
sudo yum-config-manager --enable mysql80-community
sudo wget -P /usr/local/src https://downloads.mysql.com/archives/get/p/23/file/mysql-8.0.32-1.el7.x86_64.rpm-bundle.tar
sudo tar -xvf /usr/local/src/mysql-8.0.32-1.el7.x86_64.rpm-bundle.tar -C /usr/local/src
sudo yum install -y mysql-community*8.0*

echo "OK: 04_mysql_updates.sh"
