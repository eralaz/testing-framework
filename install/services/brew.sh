#!/usr/bin/env bash

service="brew"

echo -e "\nInstalling $service...\n"

if [ -z $(which $service) ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo -e "$service has been installed\n"
else
    echo -e "$service is already installed!\n"
fi