#!/usr/bin/env bash

function test_module_phpunit_tests()
{
    result=$(/usr/local/Cellar/php70/7.0.27_19/bin/php /usr/local/var/www/html/vendor/phpunit/phpunit/phpunit --no-configuration FreeFunDev\UnitTests\Test\RouterTest /usr/local/var/www/html/app/code/FreeFunDev/UnitTests/Test/Unit/RouterTest.php --teamcity)
    phpunitStatusFailed=$(echo $result | grep "ERRORS!" | wc -w)
    phpunitStatusOK=$(echo $result | grep "OK" | wc -w)

    output="| Phpunit Tests | all passed"
    if (($phpunitStatusFailed == 0 && $phpunitStatusOK > 0 ))
    then
        echo -e "${GREEN}OK${NC} $output"
    else
        echo -e "${RED}FAILED${NC} $output"
    fi
}
