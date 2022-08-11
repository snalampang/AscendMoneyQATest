*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    String

*** Variable ***
${url}                 http://the-internet.herokuapp.com/login
${input_user}          //input[@id="username"]
${input_pass}          //input[@id="password"]
${button_login}        //button//i[contains(text(),"Login")]/..
${text_username}            tomsmith
${text_invalid_user}        tomholland
${text_password}            SuperSecretPassword!
${text_invalid_pwd}         Password!
${suc_msg}             //div[contains(text(),"You logged into a secure area!")]
${inv_pwd_msg}         //div[contains(text(),"Your password is invalid!")]
${inv_user_msg}        //div[contains(text(),"Your username is invalid!")]