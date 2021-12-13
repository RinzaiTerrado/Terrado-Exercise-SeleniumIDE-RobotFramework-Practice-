*** Settings ***
Documentation   A test suite with a single test for sorting A-Z
...
...
...
Library         SeleniumLibrary

*** Test Cases ***

Sort Z to A
    # open browser
    Open Browser    https://www.saucedemo.com/  chrome
    # set window size
    Maximize Browser Window
    # check if in login page
    Page Should Contain Element     login-button
    # input username
    Input Text      user-name       standard_user
    # input password
    Input Password      password        secret_sauce
    # click login button 
    Click Button    login-button
    # mouse to dropdown
    Select From List By Index       xpath://*[@id="header_container"]/div[2]/div[2]/span/select        1
    # should be arranged from z to a
    Element Text Should Be      xpath:/html/body/div/div/div/div[2]/div/div/div/div[1]/div[2]/div[1]/a/div          Test.allTheThings() T-Shirt (Red)
    Element Text Should Be      xpath:/html/body/div/div/div/div[2]/div/div/div/div[6]/div[2]/div[1]/a/div          Sauce Labs Backpack 
    # close browser
    [Teardown]    Close Browser