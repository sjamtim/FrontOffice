*** Settings ***
Documentation                        This is some information about the website i will test. 
Resource                             ../Resources/Common.robot
Resource                             ../Resources/FrontOfficeApp.robot
Resource                             ../Resources/config.robot

Test Setup                           Common.Begin Web Test    ${BROWSER}
Test Teardown                        Common.End Web Test


*** Test Cases ***
Should Be Able To Access "Team" Page
    [Tags]      Access
    FrontOfficeApp.Go To "Home" Page                           ${URL}
    FrontOfficeApp.Go To "Team" Page
"Team" Page Should Match Requirements
    [Tags]      Verify
    FrontOfficeApp.Go To "Home" Page                           ${URL}
    FrontOfficeApp.Go To "Team" Page
    FrontOfficeApp.Validate "Team" page loaded
