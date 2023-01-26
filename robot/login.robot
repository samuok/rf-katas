*** Settings ***
Library     Browser
Resource    common.resource

*** VARIABLES ***
${URL}    http://localhost:7272/

*** Keywords ***


Verify That Welcome Page Is Visible
    Get Title   ==      Welcome Page
Do Successful Logout
    Click   text=logout
Verify That Login Page Is Visible
    Get Title   ==      Login Page
Do Successful Login
    Open Browser To Login Page
    Enter Username      demo
    Enter Password      mode
    Submit Login Form

*** Test Cases ***
Welcome Page Should Be Visible After Successful Login
    [Setup]     Do Successful Login
    Verify That Welcome Page Is Visible
    [Teardown]      Do Successful Logout
Login Form Should Be Visible After Successful Logout
    [Setup]     Do Successful Login
    Verify That Welcome Page Is Visible
    Do Successful Logout
    Verify That Login Page Is Visible

