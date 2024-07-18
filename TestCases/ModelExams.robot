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
TestCases : "نماذج_الاختبارات"
   [Documentation]    Model Tests


    Add new version with entering data in it     #Passed
    Entering data in a new Question    #Passed
    Cancel adding version #اضافة_نموذج_في_نماذج_الاختبار   #Passed
    Search field Function   #Passed
    Delete a Question from the List   #Passed
    Assert Question is selected correctly #Passed



*** Keywords ***
Add new version with entering data in it
    HomePage.Valid Login
    Sleep       10s
    HomePage.Click Settings button
    Sleep       10s
    Settings.Click Model Exams button
    Sleep       10s
    ModelExams.Clicks on Add version button #الضغط_على_اضافة_نموذج_في_نماذج_الاختبار
    Sleep    10s
    ModelExams.Enter Credentials after add version
    Sleep    10s
    Close Browser


Entering data in a new Question
    HomePage.Valid Login
    Sleep    10s
    HomePage.Click Settings button
    Sleep    10s
    Settings.Click Model Exams button
    Sleep    10s
    ModelExams.Enter Credentials to an Empty Question
    Sleep    10s
    Close Browser


Cancel adding version #اضافة_نموذج_في_نماذج_الاختبار
    HomePage.Valid Login
    Sleep    5s
    HomePage.Click Settings button
    Sleep    5s
    Settings.Click Model Exams button
    Sleep   10s
    ModelExams.Clicks on Add version button #الضغط_على_اضافة_نموذج_في_نماذج_الاختبار
    Sleep    10s
    ModelExams.Cancel adding version #اضافة_نموذج_في_نماذج_الاختبار
    Sleep    5s
    Close Browser

Search field Function
    HomePage.Valid Login
    Sleep    10s
    HomePage.Click Settings button
    Sleep    10s
    Settings.Click Model Exams button
    Sleep    10s
    ModelExams.Search field Function
    Sleep    5s
    Close Browser


Delete a Question from the List
     HomePage.Valid Login
     Sleep    15s
     HomePage.Click Settings button
     Sleep    15s
     Settings.Click Model Exams button
     Sleep    20s
     ModelExams.Delete a Question from the List
     Close Browser

Assert Question is selected correctly
     HomePage.Valid Login
     Sleep    15s
     HomePage.Click Settings button
     Sleep    15s
     Settings.Click Model Exams button
     Sleep    20
     ModelExams.Assert Question is selected correctly
     Sleep    10s
     Close Browser
