*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    String

*** Keywords ***
Enter Username and Password
     [Arguments]      ${xpath_user}       ${xpath_pass}     ${username}       ${password}
     Element Should Be Visible    ${xpath_user}
     Element Should Be Visible    ${xpath_pass}
     Input Text       ${xpath_user}       ${username}
     Input Text       ${xpath_pass}       ${password}

Click Login Button
    [Arguments]     ${btn}
    Element Should Be Visible   ${btn}
    Click Element   ${btn}

Verify Login
    [Arguments]     ${msg}  
    Element Should Be Visible        ${msg}