#!/usr/bin/env bash

PHP_NO_SYNTAX_ERROR="No syntax errors detected"

function check_php_file_syntax()
{
    moduleName="$1"
    moduleVendor="$2"
    testDesc="Php file syntax"
    filePath="$3"
    output="${moduleName} | ${moduleVendor} | Php file syntax | ${filePath}"

    #test check
    isValid = $(php -l $filePath | grep "$RESPONSE")

    if [ -n "$isValid" ]; then
        echo -e "${GREEN}OK${NC} $output"
    else
        echo -e "${RED}FAILED${NC} $output"
    fi
}