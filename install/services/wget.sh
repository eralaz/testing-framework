#!/usr/bin/env bash

source ../../etc/batf.cfg
sudo chmod 777 ${INSTALL_LOG}
echo ${INSTALL_LOG}

service="wget"

echo -e "\nInstalling $service...\n"

if [ -z $(which $service) ]; then
    brew install $service >> ${INSTALL_LOG}
    echo -e "$service has been installed\n"
else
    echo -e "$service is already installed!\n"
fi