*** Settings ***
Library         SeleniumLibrary
Resource        ./common_keywords.robot
Variables       ../pages/home_page.yaml
Variables       ../pages/index_page.yaml


*** Keywords ***
Logout sandbox system
    SeleniumLibrary.Click Element    ${home_page_elements.btn_user_profile}
    SeleniumLibrary.Click Element    ${home_page_elements.ddl_logout}
    SeleniumLibrary.Click Element    ${index_page_elements.btn_go_to_login_page}
    # Go To    https://sandbox.moodledemo.net/login/index.php

Verify login success message
    [Arguments]    ${message}
    SeleniumLibrary.Wait Until Page Contains    ${message}    15s
    SeleniumLibrary.Page Should Contain    ${message}
