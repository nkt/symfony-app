#!/usr/bin/env bash

echo "Installing node..."

sudo add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get update

sudo apt-get install -y nodejs

echo "Installing global packages..."

sudo npm install -g grunt gulp bower
