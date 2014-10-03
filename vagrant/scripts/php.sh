#!/usr/bin/env bash

PHP_FPM_INI=/vagrant/vagrant/etc/php/php.ini
PHP_CLI_INI=/vagrant/vagrant/etc/php/php.ini
FPM_CONF=/vagrant/vagrant/etc/php/php-fpm.conf
FPM_POOL_CONF=/vagrant/vagrant/etc/php/pool.d/vagrant.conf

echo "Installing php..."

sudo add-apt-repository -y ppa:ondrej/php5
sudo apt-get update

sudo apt-get install -y php5-dev php5-cli php5-fpm
sudo apt-get install -y php5-apcu php5-intl php5-gd php5-curl

echo "Update php configuration..."

sudo cp -f ${PHP_FPM_INI} /etc/php5/fpm/php.ini
sudo cp -f ${PHP_CLI_INI} /etc/php5/cli/php.ini

sudo cp -f ${FPM_CONF} /etc/php5/fpm/php-fpm.conf
sudo rm -f /etc/php5/fpm/pool.d/*.conf # remove default/old pools
sudo cp -f ${FPM_POOL_CONF} /etc/php5/fpm/pool.d/

sudo service php5-fpm restart

echo "Installing composer..."

curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
