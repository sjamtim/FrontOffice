*** Settings ***
Library        SeleniumLibrary

*** Variables ***

${TOPNAV_TEAM_LINK} =                           xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a 

*** Keywords ***

Click at "Team" Link
    Click Link                                  ${TOPNAV_TEAM_LINK}    