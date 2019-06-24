#!/usr/bin/env bash

service="service_name"

if [ $($service --version | grep "command not found") -gt 0 ]; then
    brew install $service
fi