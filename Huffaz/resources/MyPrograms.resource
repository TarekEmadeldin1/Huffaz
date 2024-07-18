*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

MyPrograms.Click AddProgram Button
    Click Element    xpath=//button[contains(@class,'cancel-btn')]