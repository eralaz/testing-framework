# This is bash test framework. Designed to test website html pages.
Could be used to test  both storefront and admin pages.

# How To Write test for the page?
 1. Choose html tag you are expected to have on it.
 2. Create empty bash script located within module at Test/bash/html.
 3. Give it a self-explained name.
 4. Call the right test funtion passing all required arguments.
"moduleName="FixedModule"
moduleGroup="FreeIntro"
testDesc="Page Matched"
matchRule="Custom storefront page"
pageId="fixmodulesolution-storefront-page"

test_html_page_match "$moduleName" "$moduleGroup" "$testDesc" "$pageId" "$matchRule" "
