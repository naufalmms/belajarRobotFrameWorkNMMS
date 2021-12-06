*** Settings ***
Library                 SeleniumLibrary
Resource                ../Resources/wikipediaKeywords.robot
Suite Setup             Open my Browser         ${URL}      ${BROWSER}
Suite Teardown          Close my browser


*** Variables ***
${URL}              https://www.wikipedia.org/
${BROWSER}          CHROME
${txtSearching}     marvel MCU


*** Test Cases ***
Searching Document
    input text for searching    ${txtSearching}
    click searching