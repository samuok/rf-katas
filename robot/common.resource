*** KEYWORDS ***
Open Browser To Login Page
    New Browser
    New Page    ${url}
Enter Username
    [Arguments]     ${username}
    Fill Text   css=input#username_field    ${username}
Enter Password
    [Arguments]     ${password}
    Fill Secret   css=input#password_field      $password
Submit Login Form
    Click   id=login_button