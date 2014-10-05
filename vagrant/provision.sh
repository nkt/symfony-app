#!/usr/bin/env bash

APP_PATH=$1
DATABASE=$2
DATABASE_ROOT_PASSWORD=$3
SCRIPTS_PATH=${APP_PATH}/vagrant/scripts

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade

export APP_CONF_PATH=${APP_PATH}/vagrant/etc

${SCRIPTS_PATH}/common.sh
${SCRIPTS_PATH}/git.sh
${SCRIPTS_PATH}/nginx.sh
${SCRIPTS_PATH}/php.sh
# ${SCRIPTS_PATH}/hhvm.sh
${SCRIPTS_PATH}/node.sh
${SCRIPTS_PATH}/python.sh
${SCRIPTS_PATH}/ruby.sh

DATABASE_INSTALL_SCRIPT=${SCRIPTS_PATH}/db/${DATABASE}.sh
if [ -f "$DATABASE_INSTALL_SCRIPT" ]; then
    ${DATABASE_INSTALL_SCRIPT} ${DATABASE_ROOT_PASSWORD}
else
    >&2 echo "Wrong database type!"
fi
