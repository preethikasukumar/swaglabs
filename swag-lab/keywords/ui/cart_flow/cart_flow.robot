*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

Variables       ../../../locators/ui/cart_flow/cart_flow_locators.py
Variables       ../../../locators/ui/login_flow/login_flow_locators.py
Variables       ../../../variables/ui/login_flow/login_flow_variables.py
Variables       ../../../variables/ui/cart_flow/cart_flow_variables.py

*** Keywords ***
Add Products to Cart And Verify Cart List
    [Documentation]  this keyword will add products to cart
        Wait Until Page Contains Element         ${txt_products_locator}
        Wait Until Page Contains Element And Click      ${btn_add_product_bike_light_locator}
        Wait Until Page Contains Element And Click      ${btn_shopping_cart_badge_locator}
        Page Should Contain Element      ${cart_list_locator}

Validate Product Details In User Information Page
    [Documentation]  this keyword will validate product details of user in user information page
        Wait Until Page Contains Element      ${cart_summary_info}
        ${actual_price} =  Get Text     ${cart_summary_subtotal_locator}
        Should Be Equal As Strings  ${actual_price}    ${EXPECTED_PRICE}
        ${actual_payment_method}=  Get Text  ${cart_payment_value_locator}
        Should Be Equal  ${actual_payment_method}  ${EXPECTED_PAYMENT_METHOD}
        ${actual_shipping_info}=  Get Text  ${cart_shipping_value_locator}
        Should Be Equal  ${actual_shipping_info}  ${EXPECTED_SHIPPING_INFO}

Wait Until Page Contains Element And Click
    [Documentation]  keyword to combine the element wait and then click on element including the explicit timeout
    [Arguments]    ${locator}
        Wait Until Page Contains Element    ${locator}      timeout=${EXPLICIT_TIMEOUT}
        Click Element   ${locator}

Remove products from cart And Verify
    [Documentation]  this keyword will remove products from cart
    [Arguments]    ${locator}
        Wait Until Page Contains Element         ${locator}          timeout=${EXPLICIT_TIMEOUT}
        Wait Until Page Contains Element And Click       ${locator}
        Page Should Not Contain    ${cart_list_locator}

Enter All The User Information
    [Documentation]  this keyword will enter the user information
        Wait Until Page Contains Element         ${txt_user_info_firstname_locator}        timeout=${EXPLICIT_TIMEOUT}
        Input Text    ${txt_user_info_firstname_locator}  ${user_info_firstname_variable}
        Input Text    ${txt_user_info_lastname_locator}   ${user_info_lastname_variable}
        Input Text    ${txt_user_postal_code_locator}     ${user_info_postal_code_variable}

Click finish button and verify successfull purchase
    [Documentation]  this keyword will verify the successfull purchase
        Wait Until Page Contains Element And Click       ${btn_finish_locator}
        Page Should Contain Element    ${txt_success_locator}
