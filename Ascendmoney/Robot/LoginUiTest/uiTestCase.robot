*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    String
Resource    uiTestVar.robot
Resource    uiTestKey.robot

Test Teardown       Close Browser
Suite Teardown      Close Browser

*** Test Cases ***
Login success
    [tags]    success
    Open Browser   ${url}   chrome
    Enter Username and Password     ${input_user}   ${input_pass}   ${text_username}    ${text_password} 
    Click Login Button              ${button_login}
    Verify Login            ${suc_msg}

Login Fail invalid pwd
    [tags]    Fail
    Open Browser   ${url}   chrome
    Enter Username and Password     ${input_user}   ${input_pass}   ${text_username}    ${text_invalid_pwd} 
    Click Login Button              ${button_login}
    Verify Login            ${inv_pwd_msg}

Login Fail invalid user
    [tags]    Fail
    Open Browser   ${url}   chrome
    Enter Username and Password     ${input_user}   ${input_pass}   ${text_invalid_user}    ${text_invalid_pwd} 
    Click Login Button              ${button_login}
    Verify Login                    ${inv_user_msg}