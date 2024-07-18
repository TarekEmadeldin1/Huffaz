*** Settings ***
Library         SeleniumLibrary
Library           OperatingSystem
Resource          ../resources/HomePage.resource
Resource          ../resources/AuthPage.resource
Resource          ../resources/MyPrograms.resource
library         Process
library         Dialogs

Test Teardown     Close All Browsers
Suite Teardown     Close All Browsers

*** Variables ***
${BASE_URL}  http://74.249.194.145:1030/
${Auth_URL}   http://74.249.194.145:1030/auth
${EMAIL}     super@super.com
${PASSWORD}  P@ssw0rd
${UserName}   super


*** Test Cases ***
TestCase1 : "نماذج_الاختبارات"
   [Documentation]    add new program.
    HomePage.Valid Login                #using always login with valid user
    Sleep    5s


