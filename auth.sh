#!/usr/bin/env bash
#obtain form_key and cookie
wget -q --save-cookies="$ADMIN_COOKIES_FILE" --keep-session-cookies -O $ADMIN_PAGE_FILE $ADMIN_HOME_URL

#send user & pass combined with form secret key and admin session cookie
#write admin session cookies for the next admin page requests
form_key=$(grep "FORM_KEY" $ADMIN_PAGE_FILE | cut -d "'" -f2)
postData="form_key=$form_key&login%5Busername%5D=$USER&login%5Bpassword%5D=$PASS"

wget -q --load-cookies="$ADMIN_COOKIES_FILE" --save-cookies="$ADMIN_COOKIES_FILE" --keep-session-cookies  \
     --post-data="$postData" -O $LOGIN_LOG_FILE $ADMIN_HOME_URL"/dashboard"