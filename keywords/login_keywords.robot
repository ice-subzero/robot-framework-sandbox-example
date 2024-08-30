*** Settings ***
Library         SeleniumLibrary
Resource        ./common_keywords.robot
Variables       ../pages/login_page.yaml
Variables       ../resources/config.yaml


*** Keywords ***
Login to sandbox system
    [Arguments]    ${username}    ${password}
    common_keywords.Wait element ready and Input Text    ${login_page_elements.txt_username}    ${username}
    common_keywords.Wait element ready and Input Text    ${login_page_elements.txt_password}    ${password}
    common_keywords.Wait element ready and Click    ${login_page_elements.btn_login}

Verify login fail message
    [Arguments]    ${message}
    SeleniumLibrary.Wait Until Page Contains    ${message}    ${TIMEOUT}
    SeleniumLibrary.Page Should Contain    ${message}
