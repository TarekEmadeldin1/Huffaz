*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

MyPrograms.Click AddProgram Button
    Click Element    xpath=//*[@class='nav-item active'][1]