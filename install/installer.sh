#!/usr/bin/env bash

echo -e 'installing required services....'

services2install=$(find -L "$(pwd)/services" -name "*.sh")

for service in $services2install
do
    source service
done
