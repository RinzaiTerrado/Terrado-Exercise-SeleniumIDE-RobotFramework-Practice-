*** Settings ***
Documentation   A test suite with a single test for wrong password
...
...
...
Library         SeleniumLibrary

*** Test Cases ***

Wrong Password
    # open browser
    Open Browser    https://www.saucedemo.com/  chrome
    # set window size
    Maximize Browser Window
    # check if in login page
    Page Should Contain Element     login-button
    # input username
    Input Text      user-name       standard_user
    # input password
    Input Password      password        111
    # click login button 
    Click Button    login-button
    # should be open in products page
    Element Text Should Be  xpath://*[@id="login_button_container"]/div/form/div[3]/h3     Epic sadface: Username and password do not match any user in this service
    # close browser
    [Teardown]    Close Browser