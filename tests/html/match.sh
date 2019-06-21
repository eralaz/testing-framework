#!/usr/bin/env bash
function test_html_page_match()
{
    moduleName=$1
    moduleVendor=$2
    testDesc=$3
    pageId=$4
    matchRule=$5
    pageUrl="$HOME_URL/$pageId"

    wget --content-on-error -q -O $FRONT_PAGE_FILE "$pageUrl"
    OK=$(grep "$matchRule" $FRONT_PAGE_FILE)

    output="| $moduleName($moduleVendor) | $testDesc($matchRule) | $pageId"
    if [ -n "$OK" ]
    then
        echo -e "${GREEN}OK${NC} $output"
    else
        echo -e "${RED}FAILED${NC} $output"
    fi
}