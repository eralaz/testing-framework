#!/usr/bin/env bash

service="service_name"
echo -e "Installing $service ...\n"

if [ $($service --version | grep "command not found") -gt 0 ]; then
    brew install $service
    echo -e "$service has been installed\n"
else
    echo -e "$service is already installed!\n"
fi

