*** Settings ***
Documentation       Validate Login Flow of saucedemo
Test Teardown       Close All Browsers
Force Tags          ui  critical  login

Resource            ../../../keywords/ui/login_flow/login_flow.robot

*** Test Cases ***
Login Test 1 : Check the login functionality with accepted usernames and passwords
   [Documentation]  This test case is to check the login flow with accepted usernames and passwords
      Open Browser    ${URL}    ${Browser}
      Input Username And Password     ${login_username}     ${login_password}
      Click Login Button
      Validate Product Inventory page is loaded

Login Test 2 : Check the login functionality for locked users
   [Documentation]  This test case is to check the login flow for locked users
      Open Browser    ${URL}    ${Browser}
      Input Username And Password     ${locked_out_user}     ${login_password}
      Click Login Button
      Verify Error Message   ${txt_error_message_locator}     ${ExpectedLockedOutErrorMessage}

Login Test 3 : Check the login functionality for Invalid Password
   [Documentation]  This test case is to check the login flow for invalid Password
      Open Browser    ${URL}    ${Browser}
      Input Username And Password     ${login_username}     ${invalid_password}
      Click Login Button
      Verify Error Message   ${txt_error_message_locator}     ${ExpectedInvalidPasswordErrorMessage}

Login Test 4 : Check the login functionality for Blank user data
   [Documentation]  This test case is to check the login flow for blank user data
      Open Browser    ${URL}    ${Browser}
      Input Username And Password     ${blank_login_username}     ${blank_password_username}
      Click Login Button
      Verify Error Message   ${txt_error_message_locator}     ${ExpectedBlankDataErrorMessage}

Login Test 5 : Check the login functionality for Invalid username
   [Documentation]  This test case is to check the login flow for invalid username
      Open Browser    ${URL}    ${Browser}
      Input Username And Password     ${invalid_username}     ${login_password}
      Click Login Button
      Verify Error Message   ${txt_error_message_locator}     ${ExpectedInvalidPasswordErrorMessage}