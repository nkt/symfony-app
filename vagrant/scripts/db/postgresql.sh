#!/usr/bin/env bash

PASSWORD=$1

echo "Installing postgresql..."

sudo apt-get install -y postgresql postgresql-contrib
sudo apt-get install -y php5-pgsql

sudo service postgresql start
sudo -u postgres psql -c "CREATE ROLE root LOGIN UNENCRYPTED PASSWORD '$PASSWORD' NOSUPERUSER INHERIT NOCREATEDB
NOCREATEROLE NOREPLICATION;"
sudo service postgresql restart
