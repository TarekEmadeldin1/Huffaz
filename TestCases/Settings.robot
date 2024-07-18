*** Settings ***
Library         SeleniumLibrary
Library           OperatingSystem
Resource          ../resources/HomePage.resource
Resource          ../resources/AuthPage.resource
Resource          ../resources/Settings.resource
Resource          ../resources/ModelExams.resource
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

TestCase 1 : "فتح_نماذج_الاختبارات"
   [Documentation]    Model Tests
   HomePage.Valid Login
   Sleep    10s
   HomePage.Click Settings button
   Sleep    10s
   Settings.Click Model Exams button
   Sleep    10s
   Close Browser

TestCase 2 : "فتح_تقسيم_البرامج"
   [Documentation]    Model Tests
   HomePage.Valid Login
   Sleep    10s
   HomePage.Click Settings button
   Sleep    10s
   Settings.Click on Program Division
   Sleep    10s
   Close Browser
