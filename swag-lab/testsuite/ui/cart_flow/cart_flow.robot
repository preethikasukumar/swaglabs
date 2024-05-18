*** Settings ***
Documentation       Validate products purchase for saucedemo from cart page
Test Teardown       Close All Browsers
Force Tags          ui  critical  cart

Resource            ../../../keywords/ui/cart_flow/cart_flow.robot
Resource            ../../../keywords/ui/login_flow/login_flow.robot

*** Test Cases ***
Cart Test 1 : Add Products To Cart And Verify Cart List
   [Documentation]  This test case is to add products to cart
      Open Browser    ${URL}    ${Browser}
      Input Username And Password     ${login_username}     ${login_password}
      Click Login Button
      Validate Product Inventory page is loaded
      Add Products to Cart And Verify Cart List

Cart Test 2 : Remove Products From Cart And Verify
   [Documentation]  This test case is to remove products from cart
      Open Browser    ${URL}    ${Browser}
      Input Username And Password     ${login_username}     ${login_password}
      Click Login Button
      Validate Product Inventory page is loaded
      Add Products to Cart And Verify Cart List
      Remove products from cart And Verify       ${btn_remove_bikelight_locator}

Cart Test 3 : Verify User Information In Checkout Page And Complete Purchase
   [Documentation]  This test case is to verify user information in checkout page
      Open Browser    ${URL}    ${Browser}
      Input Username And Password     ${login_username}     ${login_password}
      Click Login Button
      Validate Product Inventory page is loaded
      Add Products to Cart And Verify Cart List
      Wait Until Page Contains Element And Click       ${btn_checkout_locator}
      Capture Page Screenshot
      Enter All The User Information
      Wait Until Page Contains Element And Click     ${btn_continue_locator}
      Validate Product Details In User Information Page
      Click finish button and verify successfull purchase



