*** Settings ***
Library    BuiltIn
Library    String
Library    RequestsLibrary
Library    JSONLibrary
Library    Collections


*** Variable ***
${url}      https://reqres.in/api
${id}       12
${email}    rachel.howell@reqres.in
${first}    Rachel
${last}     Howell
${avatar}   https://reqres.in/img/faces/12-image.jpg

*** Keywords ***

*** Test Cases ***
Get user profile success
    Create Session  getUser12   ${url}
    ${response}=    GET On Session  getUser12   /users/12
    Status Should Be  200  ${response}  #Check Status as 200
    Should Be Equal As Strings   ${response.json()["data"]["id"]}           ${id}
    Should Be Equal As Strings   ${response.json()["data"]["email"]}        ${email} 
    Should Be Equal As Strings   ${response.json()["data"]["first_name"]}   ${first} 
    Should Be Equal As Strings   ${response.json()["data"]["last_name"]}    ${last}  
    Should Be Equal As Strings   ${response.json()["data"]["avatar"]}       ${avatar}

Get user profile but user not found
    Create Session  getUser1234   ${url}
    ${response}=    GET On Session  getUser12   /users/1234     expected_status= 404
    Status Should Be    404  ${response}
    Should Be Equal As Strings   ${response.json()}           {}

*** Keywords ***
