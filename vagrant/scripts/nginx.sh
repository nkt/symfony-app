#!/usr/bin/env bash

NGINX_CONF=/vagrant/vagrant/etc/nginx/nginx.conf

echo "Installing nginx..."

sudo add-apt-repository -y ppa:nginx/development
sudo apt-get -y update

sudo apt-get install -y nginx-full

echo "Update nginx configuration..."
sudo cp -f ${NGINX_CONF} /etc/nginx/nginx.conf

sudo service nginx restart
