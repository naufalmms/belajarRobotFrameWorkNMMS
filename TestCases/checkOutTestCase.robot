*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/loginTestKeyword.robot
Suite Setup         Open my Browser  ${URL}    ${BROWSER}
Suite Teardown      Close My Browser


*** Variables ***
${URL}      https://www.saucedemo.com/
${BROWSER}  CHROME
${USER}     standard_user
${PASS}     secret_sauce

*** Test Cases ***
Login Process
    Enter UserName                  ${USER}
    Enter PassWord                  ${PASS}
    Click Sign Button
    Verified Succes Login
    sleep                           3

Chekout Process
    Open Detail BackPack
    Add to Cart
    sleep                           2
    Open List Order
    sleep                           2
    Click Checkout
    sleep                           2

Input INFORMATION
    Enter First Name    naufal
    Enter Last Name     mms
    Enter ZIP Code      123456
    sleep               2
    Click Next







