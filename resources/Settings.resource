*** Settings ***
Library     SeleniumLibrary


*** Keywords ***

Settings.Click Model Exams button
    Click Element    xpath=//*[@class='row setting-list']/*/*[6]

   #relaive xpath=/html/body/app-root/div/div/div[2]/app-setting-dashboard/div/section/a[6]
   
Settings.Click on Program Division
    Click Element    xpath=//*[@class='row setting-list']/*/*[8]