*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObject/locators.py

*** Keywords ***
Open Detail BackPack
    click element       ${linkTittleProductBackPack}

