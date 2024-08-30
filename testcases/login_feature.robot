*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/login_keywords.robot
Resource        ../keywords/homepage_keywords.robot
Variables       ../resources/config.yaml
Variables       ../resources/test_data.yaml

Suite Setup     SeleniumLibrary.Open Browser    ${base_url}    ${web_browser}


*** Test Cases ***
As an administrator, I want to login to sandbox system
    login_keywords.Login to sandbox system    ${admin_user}    ${correct_password}
    homepage_keywords.Verify login success message    ${welcome_message_for_admin_user}
    [Teardown]    homepage_keywords.Logout sandbox system

As a protocol, I want to validate login when user input wrong password
    login_keywords.Login to sandbox system    ${admin_user}    ${incorrect_password}
    login_keywords.Verify login fail message    ${login_fail_message}
