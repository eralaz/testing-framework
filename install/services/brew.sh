#!/usr/bin/env bash

service="brew"

if [ $($service --version | grep "command not found") -gt 0 ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi