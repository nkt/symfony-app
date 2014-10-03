#!/usr/bin/env bash

echo "Installing git..."

sudo add-apt-repository -y ppa:git-core/ppa
sudo apt-get -y update

sudo apt-get install -y git
