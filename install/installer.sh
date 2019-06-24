#!/usr/bin/env bash

echo -e '\nShell test framework. Installing required services....\n'

services2install=$(find -L "$(pwd)/services" -name "*.sh")

for service in $services2install
do
    source service
done

echo -e "\nServices have been installed. Installation log can be found at /var/log/install.log\n"