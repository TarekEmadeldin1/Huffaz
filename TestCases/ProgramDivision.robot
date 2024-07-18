*** Settings ***
Library         SeleniumLibrary
Library           OperatingSystem
Resource          ../resources/HomePage.resource
Resource          ../resources/AuthPage.resource
Resource          ../resources/Settings.resource
Resource          ../resources/ProgramDivision.resource
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
Test Cases
    #Add a section
    #Cancel Button of Adding Button
    Edit a Section in Program Division
    #Delete a Scetion in Program Division
    #Cancel Deleting a Scetion in Program Division

*** Keywords ***

Add a section
    HomePage.Valid Login
    Sleep    10s
    HomePage.Click Settings button
    Sleep    10s
    Settings.Click on Program Division
    Sleep    10s
    ProgramDivision.Clicks 0n Add button    #الضغط_على_اضافة
    Sleep    10s
    ProgramDivision.Clicks on "Name of the Section in Arabic" Button
    Sleep    10s
    ProgramDivision.Clicks on "Name of the Section in English" Button
    Sleep    10s
    ProgramDivision.Clicks on "Save Button" of Add Section
    Sleep    10s
    Close Browser

Cancel Button of Adding Button
    HomePage.Valid Login
    Sleep    10s
    HomePage.Click Settings button
    Sleep    10s
    Settings.Click on Program Division
    Sleep    10s
    ProgramDivision.Clicks 0n Add button    #الضغط_على_اضافة
    Sleep    10s
    ProgramDivision.Clicks on "Name of the Section in Arabic" Button
    Sleep    10s
    ProgramDivision.Clicks on "Name of the Section in English" Button
    Sleep    10s
    ProgramDivision.Clicks on "Cancel buttton" of Cancel Section
    Sleep    10s
    Close Browser

Edit a Section in Program Division
    HomePage.Valid Login
    Sleep    10s
    HomePage.Click Settings button
    Sleep    10s
    Settings.Click on Program Division
    Sleep    10s
    ProgramDivision.Clicks on "Edit Section"
    Sleep    10s
    ProgramDivision.Edit field with new text
    Sleep    10s
    ProgramDivision.Clicks on "Save Button" of Add Section
    Sleep    10s
    Close Browser

Delete a Scetion in Program Division
    HomePage.Valid Login
    Sleep    10s
    HomePage.Click Settings button
    Sleep    10s
    Settings.Click on Program Division
    Sleep    10s
    ProgramDivision.Clicks on Delete button
    Sleep    10s
    ProgramDivision.Approve Deleting Section
    Sleep    10s
    Close Browser


Cancel Deleting a Scetion in Program Division
    HomePage.Valid Login
    Sleep    10s
    HomePage.Click Settings button
    Sleep    10s
    Settings.Click on Program Division
    Sleep    10s
    ProgramDivision.Clicks on Delete button
    Sleep    10s
    ProgramDivision.Reject Deleting Secction
    Sleep    10s
    Close Browser
