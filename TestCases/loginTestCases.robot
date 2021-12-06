*** Settings ***
Library             SeleniumLibrary
Resource            ../Resources/loginTestKeyword.robot
Library             DataDriver   ../Data/dataLogin.csv
Suite Setup         Open my Browser         ${URL}      ${BROWSER}
Suite Teardown      Close My Browser
Test Template       invalid login


*** Variables ***
${URL}          https://www.saucedemo.com/
${BROWSER}      CHROME
#${user}         standard_user
#${password}     secret_sauce


*** Test Cases ***
#loginTest
#    Open my Browser         ${URL}      ${BROWSER}
#    Enter UserName          ${user}
#    Enter PassWord          ${password}
#    Click Sign Button
#    Verified Succes Login
#    Close My Browser
InvalidLoginDataWithCSV using ${username} ${password}


*** Keywords ***
invalid login
    [Arguments]    ${username}      ${password}
    enter username    ${username}
    enter password    ${password}
    click sign button
    eror message should be visible
