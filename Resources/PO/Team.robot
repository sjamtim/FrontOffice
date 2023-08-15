*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${TEAM_HEADER_LABEL} =                  xpath=//*[@id="team"]/div/div[1]/div/h2
*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element    ${TEAM_HEADER_LABEL}

Validate Page Contents
    #Below passes in Edge but fails in Chrome
    #Element Text Should Be              ${TEAM_HEADER_LABEL}    Our Amazing Team

    ${ElementText} =    Get Text        ${TEAM_HEADER_LABEL}
    Should Be Equal As Strings          ${ElementText}    Our Amazing Team    ignore_case=true
