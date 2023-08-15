*** Settings ***
Resource                ../Resources/PO/TopNav.robot
Resource                ../Resources/PO/Home.robot
Resource                ../Resources/PO/Team.robot


*** Keywords ***
Go To "Home" Page
    [Arguments]            ${URL}
    Home.Navigate To       ${URL}
    Home.Verify Page loaded

Go To "Team" Page
    TopNav.Click at "Team" Link
    Team.Verify Page Loaded

Validate "Team" page loaded
    Team.Validate Page Contents


    
    