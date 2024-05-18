*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

Variables       ../../../locators/ui/login_flow/login_flow_locators.py
Variables       ../../../variables/ui/login_flow/login_flow_variables.py

*** Keywords ***
Input Username And Password
    [Documentation]  this keyword will enter the login data
    [Arguments]    ${login_username}    ${login_password}
	    Wait Until Page Contains Element      ${login_username_locator}
        Input Text     ${login_username_locator}      ${login_username}
        Input Text     ${login_password_locator}      ${login_password}

Click Login Button
    [Documentation]  this keyword will click on login button
        Wait Until Page Contains Element     ${btn_login_locator}         timeout=${EXPLICIT_TIMEOUT}
        Click Button    ${btn_login_locator}

Validate Product Inventory page is loaded
   [Documentation]  this keyword will verify product page is loaded
         Page Should Contain Element    ${txt_products_locator}          timeout=${EXPLICIT_TIMEOUT}

Verify Error Message
    [Documentation]  Error error message in invalid case
    [Arguments]     ${locator}   ${expectederrormessage}
        Wait Until Page Contains Element    ${locator}
        ${error_message}    Get Text    ${locator}
        Should Be Equal As Strings    ${error_message}    ${expectederrormessage}

