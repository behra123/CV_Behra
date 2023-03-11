*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}    https://github.com/
${Browser}    chrome


*** Test Cases ***
Test_Login
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window    
    Sleep    4
    Click Link    xpath://a[@href='/login']
    Sleep    4
    Input Text    id=login_field    behra123
    Input Password    id=password    Behra@1012
    Sleep    4
    Click Button    xpath://input[@name='commit']
    Sleep    4
    Click Link    (//a[@href='/behra123/CV_Behra'])[2]
