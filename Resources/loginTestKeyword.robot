*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObject/locators.py

*** Keywords ***
Open my Browser
    [Arguments]    ${URL}   ${BROWSER}
    open browser    ${URL}  ${BROWSER}
    maximize browser window

Enter UserName
    [Arguments]    ${userName}
    input text      ${txt_userName}     ${userName}

Enter PassWord
    [Arguments]    ${passWord}
    input text      ${txt_passWord}     ${passWord}

Click Sign Button
    click element    ${btn_login}

Verified Succes Login
    page should contain         Sauce Labs Backpack

Eror Message Should be Visible
    page should contain    Epic sadface: Username and password do not match any user in this service

Close My Browser
    close all browsers

Open Detail BackPack
    click element       ${linkTittleProductBackPack}

Add to Cart
    click element       ${btn_addToCartBackPack}

Open List Order
    click element       ${btn_cart}

Click Checkout
    click element       ${btn_checkOut}
Enter First Name
    [Arguments]         ${firstName}
    input text          ${txt_firstName}    ${firstName}
Enter Last Name
    [Arguments]         ${lastName}
    input text          ${txt_lastName}     ${lastName}
Enter ZIP Code
    [Arguments]         ${zipCode}
    input text          ${txt_zipCode}      ${zipCode}
Click Next
    click element       ${btn_continue}