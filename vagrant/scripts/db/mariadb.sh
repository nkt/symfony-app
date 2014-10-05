#!/usr/bin/env bash

PASSWORD=$1
VERSION=10

echo "Installing mariadb..."

sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db
sudo add-apt-repository -y "deb http://mirrors.supportex.net/mariadb/repo/$VERSION/ubuntu precise main"
sudo apt-get update

sudo debconf-set-selections <<< "maria-db-$VERSION mysql-server/root_password password ${PASSWORD}"
sudo debconf-set-selections <<< "maria-db-$VERSION mysql-server/root_password_again password ${PASSWORD}"

sudo apt-get install -y mariadb-server mysql-client
sudo apt-get install -y php5-mysql
