#!/usr/bin/env bash

echo "Installing hhvm..."

wget -O - http://dl.hhvm.com/conf/hhvm.gpg.key | sudo apt-key add -
echo deb http://dl.hhvm.com/ubuntu trusty main | sudo tee /etc/apt/sources.list.d/hhvm.list

sudo apt-get update

sudo apt-get -y install hhvm
