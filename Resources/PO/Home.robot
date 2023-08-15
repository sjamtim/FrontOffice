*** Settings ***
Library                                 SeleniumLibrary

*** Variables ***
${HOME_HEADER_LABEL} =                  xpath=//*[@id="page-top"]/header/div/div/div[1]

*** Keywords ***
Navigate To
    [Arguments]                         ${URL}
    Go To                               ${URL}
Verify Page loaded
    Wait Until Page Contains Element    ${HOME_HEADER_LABEL}
    Element Text Should Be              ${HOME_HEADER_LABEL}    Welcome To Our Studio!

