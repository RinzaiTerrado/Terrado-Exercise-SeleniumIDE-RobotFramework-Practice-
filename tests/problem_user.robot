*** Settings ***
Documentation   A test suite with a single test for problem user
...
...
...
Library         SeleniumLibrary

*** Test Cases ***

Problem User
    # open browser
    Open Browser    https://www.saucedemo.com/  chrome
    # set window size
    Maximize Browser Window
    # check if in login page
    Page Should Contain Element     login-button
    # input username
    Input Text      user-name       problem_user
    # input password
    Input Password      password        secret_sauce
    # click login button 
    Click Button    login-button
    # should be open in products page
    Page Should Contain Image    xpath://*[@id="item_4_img_link"]/img    /static/media/s1-404.168b1cce.ijpg   
    # close browser
    [Teardown]    Close Browser