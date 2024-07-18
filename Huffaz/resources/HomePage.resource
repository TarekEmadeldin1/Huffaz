*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}      chrome
${BASE_URL}     http://74.249.194.145:1030/
${HOMEPAGE_TITLE}    HuffazApp
${EMAIL}     super@super.com
${PASSWORD}  P@ssw0rd

*** Keywords ***
HomePage.Launch Browser
    [Documentation]    Launch the browser and open the application.
    Open Browser  ${BASE_URL}  ${BROWSER}
    Maximize Browser Window
#    Wait Until Page Contains  Extension name here
#    Click Element  ${EXT INSTALL BTN}
##    Sleep    20s
##    Press Keys    NONE    ENTER
##    Press Keys    NONE    LEFT
#    Sleep  30 sec
##    Alert Should Be Present
##    Handle Alert    ACCEPT

#
#    Sleep    1 second
#    Open Browser    ${BASE_URL}    ${BROWSER}
#    Maximize Browser Window

HomePage.Navigate to URL
#    create web driver with addons
    [Arguments]    ${url}
    Go To    ${url}

HomePage.Verify Home Page is Visible
    Title Should Be    ${HOMEPAGE_TITLE}

HomePage.Click Login Button
    Click Element    xpath=(//a[contains(text(),'تسجيل الدخول')])[1]
    Sleep    3s

HomePage.Verify Text
    [Arguments]    ${AuthLogintext}
    Page Should Contain   ${AuthLogintext}

HomePage.Click Continue Button
    Click Element    xpath=//a[contains(text(),'Continue')]

HomePage.Verify Logged in as Username
#    Element Should Be Visible    xpath=//*[contains(text(),'Logged in as')]
    Wait Until Element Is Visible    xpath=//li[contains(@class,'border-right')]/a
    Click Element    xpath=//li[contains(@class,'border-right')]/a
    Sleep    5s
    Element Should Be Visible    xpath=//div[contains(@class,'text-center')]/div[2]
    Page Should Contain    ${UserName}
#    Element Should Contain    xpath=//div[contains(@class,'text-center')]/div[2]/input    ${EMAIL}

HomePage.Click Delete Account Button
    Click Element    xpath=//a[contains(text(),'Delete Account')]

HomePage.Verify Account Deleted
    Page Should Contain   Account Deleted!

HomePage.Click My Programs Button
    Click Element    xpath=//*[@class='menu-scroll']/*/*[2]

HomePage.Click Contact Us Button
    Click Element    xpath=//a[contains(text(),'Contact us')]

HomePage.Click Home Button
    Click Element    xpath=//a[contains(text(),'Home')]

HomePage.Click Logout Button
    Click Element    css:div[class*='mt-5'] > a
    Sleep    2s
    Element Should Be Visible    xpath=//button[contains(@class,'mat-raised-button')]
    Click Element    xpath=//button[contains(@class,'mat-raised-button')]

HomePage.Verify Navigated to Home Page
    Page Should Contain    AN EDUCATIONAL PLATFORM THAT TAKES CARE OF MEMORIZING THE HADITH
    Element Should Be Visible    xpath=(//a[contains(text(),'تسجيل الدخول')])[1]


HomePage.Click Register/Login Button
     Sleep    5s
     Click Element    xpath=//a[contains(., 'Register / Login')]



HomePage.Valid Login
    Open Browser  ${BASE_URL}  ${BROWSER}
    Maximize Browser Window
    Click Element    xpath=(//a[contains(text(),'تسجيل الدخول')])[1]
    Sleep    5s
    Input Text    name=email    ${email}
    Input Text    name=password    ${password}
    Click Element    xpath=//button[contains(@class,'UserLogin__Submit')]
    Wait Until Element Is Visible    xpath=//li[contains(@class,'border-right')]/a