#!/bin/bash

sudo amazon-linux-extras enable php8.2
sudo yum clean metadata
sudo yum install -y php-cli php-pdo php-fpm php-json php-mysqlnd
sudo yum install -y php php-devel
sudo yum install -y php-bcmath php-gd php-mbstring php-opcache php-pear php-process php-soap php-xml

sudo pecl channel-update pecl.php.net
yes no | sudo pecl install --nodeps apcu
echo 'extension=apcu.so' | sudo tee -a /etc/php.d/40-apcu.ini
sudo pecl install igbinary
echo 'extension=igbinary.so' | sudo tee -a /etc/php.d/40-igbinary.ini
yes no | sudo pecl install --nodeps redis
echo 'extension=redis.so' | sudo tee -a /etc/php.d/40-redis.ini
yes no | sudo pecl install --nodeps memcached
echo 'extension=memcached.so' | sudo tee -a /etc/php.d/40-memcached.ini
sudo pecl install xdebug
echo 'zend_extension=/usr/lib64/php/modules/xdebug.so' | sudo tee -a /etc/php.d/99-xdebug.ini

sudo pecl install phalcon-5.8.0

sudo curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

echo "OK: 02_php_updates.sh"
