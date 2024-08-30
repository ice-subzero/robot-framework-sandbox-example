*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Wait element ready and Input Text
    [Documentation]    May be switch between "Wait until element is visible" and "Wait until keyword succeeds"
    [Arguments]    ${locator}    ${text}
    # SeleniumLibrary.Wait Until Element Is Visible    ${locator}
    # SeleniumLibrary.Input Text    ${locator}    ${text}
    Wait Until Keyword Succeeds    15x    1s    Input Text    ${locator}    ${text}

Wait element ready and Click
    [Documentation]    May be switch between "Wait until element is visible" and "Wait until keyword succeeds"
    [Arguments]    ${locator}
    # SeleniumLibrary.Wait Until Element Is Visible    ${locator}
    # SeleniumLibrary.Click Element    ${locator}
    Wait Until Keyword Succeeds    15x    1s    SeleniumLibrary.Click Element    ${locator}
