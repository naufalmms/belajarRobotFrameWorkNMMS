*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObject/locator.py

*** Keywords ***
Open my Browser
    [Arguments]                 ${URL}       ${BROWSER}
    open browser                ${URL}      ${BROWSER}
    maximize browser window

Input text for searching
    [Arguments]                 ${txtSearching}
    input text                  ${txt_search}     ${txtSearching}

Click Searching
    click element               ${btn_searching}
    page should contain         Marvel Cinematic Universe
    click element               ${link_doc}
    sleep    2

Close my browser
    close all browsers



