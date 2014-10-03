#!/usr/bin/env bash

PASSWORD=$1

echo "Installing mysql..."

sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password ${PASSWORD}"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password ${PASSWORD}"

sudo apt-get install -y mysql-server mysql-client
sudo apt-get install -y php5-mysql
