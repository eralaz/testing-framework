#!/usr/bin/env bash
function test_html_page_404()
{
    moduleName=$1; moduleVendor=$2; testDesc=$3; subjectID=$4 matchRule="200 OK";

    wget --content-on-error -q -O $FRONT_PAGE_FILE $subjectID
    output="| $moduleName($moduleVendor) | $testDesc($matchRule) | $subjectID"

    OK=$(grep "$matchRule" $FRONT_PAGE_FILE)
    if [ -n "$OK" ]
    then
        echo -e "${GREEN}OK${NC} $output"
    else
        echo -e "${RED}FAILED${NC} $output"
    fi
}