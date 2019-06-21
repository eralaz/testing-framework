#!/usr/bin/env bash
function test_html_page_fatal()
{
    moduleName=$1; moduleVendor=$2; testDesc=$3; subjectID=$4 matchRule="Fatal Error!";

    wget --content-on-error -q -O $FRONT_PAGE_FILE $subjectID
    OK=$(grep "$matchRule" $FRONT_PAGE_FILE)

    output="| $moduleName($moduleVendor) | $testDesc($matchRule) | $subjectID"
    if [ -n "$OK" ]
    then
        echo -e "${GREEN}OK${NC} $output"
    else
        echo -e "${RED}FAILED${NC} $output"
    fi
}