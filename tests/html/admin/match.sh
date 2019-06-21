#!/usr/bin/env bash
#Admin page test function
function test_admin_html_page_match()
{
    moduleName="$1"
    moduleGroup="$2"
    testDesc="$3"
    adminPage="$4"
    matchRule="$5"

    adminPageUrl="$ADMIN_HOME_URL/$adminPage"

    wget -q --load-cookies="$ADMIN_COOKIES_FILE" -O $ADMIN_PAGE_FILE --content-on-error $adminPageUrl
    testStatus=$(grep "$matchRule" $ADMIN_PAGE_FILE)

    output="| $moduleName($moduleGroup) | $testDesc($matchRule) | $adminPageUrl"
    if [ -n "$testStatus" ]
    then
        echo -e "${GREEN}OK${NC} $output"
    else
        echo -e "${RED}FAILED${NC} $output"
        cp $ADMIN_PAGE_FILE $LOG_FAILED_PAGES_PATH"/${adminPage////-}.html"
    fi
}