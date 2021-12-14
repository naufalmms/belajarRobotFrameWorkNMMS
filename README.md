
# Salam kenal,saya naufal mms 👋

dalam kesempatan ini saya akan sedikit share mengenai Web Automation
menggunakan Robot Framework + Python


## Persiapan
Apa saja yang harus disiapkan sebelum melakukan test, install bahan bahan yang di butuhkan

- Python
    - [![Python Download](https://raw.githubusercontent.com/Tset-Noitamotua/_learnpython/master/images/python_logo.png)](https://www.python.org/downloads/)
- Python Pip
    - pip install pip
- IDE PyCharm Community
- Plugin Robot Framework & Selenium
- Web Driver


## Struktur

Dalam project ini kita membuat folder terpisah untuk setiap FILE, atau yang biasa disebut sebagai **POM (Page Object Model)**

- PageObject
- Resource
- TestCases


## Pengujian 1
- https://www.saucedemo.com/
    - Login Test
### Folder PageObject
dalam folder ini akan berisi file locator, yang mana file ini berisi semua variabel element web yang akan di uji

file berformat .py

```python
# Element Login Page
txt_userName="id:user-name"
txt_passWord="id:password"
btn_login="id:login-button"
```


### Folder Resource
dalam folder ini akan berisi file keyword, yang mana file ini berisi keyword yang akan di siapkan untuk melakukan pengujin

file berformat .robot

```robotframework
*** Settings ***
Library                 SeleniumLibrary
Variables               ../PageObject/locators.py

*** Keywords ***
Open my Browser
    [Arguments]         ${URL}   ${BROWSER}
    open browser        ${URL}  ${BROWSER}
    maximize browser window

Enter UserName
    [Arguments]         ${userName}
    input text          ${txt_userName}     ${userName}

Enter PassWord
    [Arguments]         ${passWord}
    input text          ${txt_passWord}     ${passWord}

Click Sign Button
    click element       ${btn_login}

Verified Succes Login
    page should contain         Sauce Labs Backpack

Eror Message Should be Visible
    page should contain    Epic sadface: Username and password do not match any user in this service

Close My Browser
    close all browsers
```


### Folder TestCases
dalam folder ini akan berisi file Test Case, yang mana file ini berisi Tahapan Test Case yang akan dilakukan

file berformat .robot

```robotframework
*** Settings ***
Library                     SeleniumLibrary
Resource                    ../Resources/loginTestKeyword.robot
Suite Setup                 Open my Browser         ${URL}      ${BROWSER}
Suite Teardown              Close My Browser

*** Variables ***
${URL}                      https://www.saucedemo.com/
${BROWSER}                  CHROME
${USER}                     standard_user
${PASS}                     secret_sauce

*** Test Cases ***
loginTest
    Open my Browser         ${URL}      ${BROWSER}
    Enter UserName          ${USER}
    Enter PassWord          ${PASS}
    Click Sign Button
    Verified Succes Login
    Close My Browser


```


### Menjalankan Test
untuk menjalankan test, dengan run terminal file yang berada di dalam folder TesCase

for example

- robot fileTestCase.robot
