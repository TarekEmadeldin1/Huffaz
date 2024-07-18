*** Settings ***
Library     SeleniumLibrary

*** Keywords ***

Clicks 0n Add button 
    Click Element    xpath=//*[@class='cancel-btn']
    Sleep    5s

Clicks on "Name of the Section in Arabic" Button        #الضغط_علي_قسم_اللغة_بالعربية
    Input Text    xpath=//*[@class='form-group']/*/*[2]/*[2]    طارق
    Sleep    5s

Clicks on "Name of the Section in English" Button        #الضغط_علي_قسم_اللغة_بالانجليزية
    Input Text    xpath=//*[@class='form-group']/*/*[2]/*[2]    Tarek
    Sleep    5s

Clicks on "Save Button" of Add Section
    Click Element    xpath=//*[@class='save-btn']
    Sleep    5s

Clicks on "Cancel buttton" of Cancel Section
    Click Element    xpath=//*[@class='row direction-rtl buttons-center mt-5']/*[2]
    Sleep    5s

Clicks on "Edit Section"
    Click Element    xpath=(//img)[13]
    Sleep    5s

Clicks on Delete button
    Click Element    (//img)[14]
    Sleep    5s

Approve Deleting Section
    Click Element    xpath=//span[@class='mat-button-wrapper'][contains(text(),'نعم')]
    Sleep    5s

Reject Deleting Secction
    Click Element    xpath=//span[@class='mat-button-wrapper'][contains(text(),'لا')]
    Sleep    5s

Edit field with new text
    Clear Element Text    xpath=//*[@class='form-group']/*/*[1]/*[2]
    Sleep    5s
    Input Text    xpath=//*[@class='form-group']/*/*[1]/*[2]    طارووووق
    Sleep    5s
    Clear Element Text  xpath=//*[@class='form-group']/*/*[2]/*[2]
    Sleep    5s
    Input Text    xpath=//*[@class='form-group']/*/*[2]/*[2]    Taroook
    Sleep    5s