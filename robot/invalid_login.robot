** Settings ***
Library     Browser
Resource    common.resource
Test Setup      Open Browser To Login Page
Test Template       Error Page Is Visible When Using Incorrect Credentials

*** VARIABLES ***
${URL}    http://localhost:7272/

*** Keywords ***


Verify That Error Page Is Visible
    Get Title   ==      Error Page

Error Page Is Visible When Using Incorrect Credentials
    [Arguments]    ${username}   ${password}
    Enter Username  ${username}
    Enter Password  ${password}
    Submit Login Form
    Verify That Error Page Is Visible
*** Test Cases ***
Empty Username Empty Password   pass34  user234
Test2   user43  84th
Test3   dni24   235i9
Test4   2otni   in4neiw
Test5   un9un3  3u94yn9