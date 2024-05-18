*** Settings ***
Documentation       Validate products purchase for saucedemo from cart page
Force Tags          ui  critical  logout
Test Teardown       Close All Browsers

Resource            ../../../keywords/ui/logout_flow/logout_flow.robot
Resource            ../../../keywords/ui/login_flow/login_flow.robot

*** Test Cases ***
Logout Test 1 : Check the logout Functionality
   [Documentation]  This test case is to check the logout Functionality
      Open Browser    ${URL}    ${Browser}
      Input Username And Password     ${login_username}     ${login_password}
      Click Login Button
      Validate Product Inventory page is loaded
      Logout Functionality
