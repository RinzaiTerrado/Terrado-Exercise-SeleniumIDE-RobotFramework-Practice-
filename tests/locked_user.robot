*** Settings ***
Documentation   A test suite with a single test for locked user
...
...
...
Library         SeleniumLibrary

*** Test Cases ***

Locked User
    # open browser
    Open Browser    https://www.saucedemo.com/  chrome
    # set window size
    Maximize Browser Window
    # check if in login page
    Page Should Contain Element     login-button
    # input username
    Input Text      user-name       locked_out_user
    # input password
    Input Password      password        secret_sauce
    # click login button 
    Click Button    login-button
    # should be open in products page
    Element Text Should Be  xpath://*[@id="login_button_container"]/div/form/div[3]/h3     Epic sadface: Sorry, this user has been locked out.
    # close browser
    [Teardown]    Close Browser