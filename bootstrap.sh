#!/usr/bin/env bash

source "config.cfg"

function start_test_session()
{
    #make var folders
    folderToMake=($VAR_PATH $LOG_PATH $WEB_PAGES_PATH $COOKIES_PATH $LOG_FAILED_PAGES_PATH)
    for folder in ${folderToMake[@]}
    do
        if [ ! -d "$folder" ]; then
            echo $folder
            mkdir $folder
        fi
    done

    #load test functions - scenarios
    tests=$(find -L "$TESTS_PATH" -name "*.sh")
    for test in $tests; do
        source $test
    done
}

#function stop_test_session()
#{
##    rm $ADMIN_COOKIES_FILE
#}