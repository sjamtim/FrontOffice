*** Settings ***
Library                             SeleniumLibrary

*** Variables ***    

*** Keywords ***
Begin Web Test
    [Arguments]                                     ${BROWSER}
    Set Selenium Speed              .2s        
    Open Browser                    about:blank     ${BROWSER}      
    Maximize Browser Window         
End Web Test
    Sleep                           2s            
    Close All Browsers