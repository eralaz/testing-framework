#!/usr/bin/env bash
clear

#load btf configuration
source config.cfg

#boostrap env
source bootstrap.sh

start_test_session

WelcomeMsg="### ${GREEN}M2 BASH TESTS Running...${NC} ###"
echo -e $WelcomeMsg; echo

#get tests list
tests=$(find -L "${ROOT_DIR}app/code" -name "*.sh")
adminTests=$(echo $tests | grep admin | wc -w)

#create admin log in session if there're admin pages tests
if [ "$adminTests" -gt 0 ]; then
    source auth.sh
fi

for test in $tests
do
    source $test
done

#run phpunit tests
source "${TOOLS_PATH}/php/unit/runner.sh"

#stop_test_session

echo -e "${GREEN}Magento 2 has been tested!${NC}"