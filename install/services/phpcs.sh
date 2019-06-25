#!/usr/bin/env bash

service="phpcs"

echo -e "\nInstalling $service...\n"

if [ -z $(which $service) ]; then
    brew install $service
    echo -e "$service has been installed\n"
else
    echo -e "$service is already installed!\n"
fi