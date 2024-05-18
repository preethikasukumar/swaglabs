*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

Variables   ../../../locators/ui/logout_flow/logout_flow_locators.py
Resource    ../cart_flow/cart_flow.robot

*** Keywords ***
Logout Functionality
   [Documentation]  this keyword will check for the logout functionlaity
	  Wait Until Page Contains Element      ${btn_three_dots_vertical_menu_locator}
	  Click Element    ${btn_three_dots_vertical_menu_locator}
	  Page Should Contain Element    ${logout_locator}
	  Wait Until Page Contains Element And Click       ${logout_locator}
	  Page Should Contain Element    ${login_box_locator}


