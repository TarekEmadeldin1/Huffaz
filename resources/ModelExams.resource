*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Select question from the list}    xpath=//*[@class='list-group list-exam_form']/*[3]/*[20]  #to_select_a_question


*** Keywords ***
#ModelExams.Click add button
 #   Click Element    xpath=/html/body/app-root/div/div/div[2]/app-exam-form-view/div/div/div[1]/app-exam-view/div/div[1]/a

Clicks on Add version button #الضغط_على_اضافة_نموذج_في_نماذج_الاختبار
    Click Element    xpath=//*[@class='list-group list-exam_form']/*[1]/*[3]

Enter Credentials after add version
    Element Should Be Visible    id=InputNamAr
    Input Text    id=InputNamAr   طارق
    Input Text    id=InputNamEN    Tarek
    Sleep    10s
    Click Element       xpath=//*[@class='save-btn btn btn-danger']
    #xpath=//*[@class='overlay ng-star-inserted']//*[1]/*[3]/*/*[1]
    #xpath=/html/body/app-root/div/div/div[2]/app-exam-form-view/div/div[2]/app-add-exam/form/section/div[1]/button[1]  
    Sleep    10s
    Close Browser

Enter Credentials to an Empty Question
    Click Element    ${Select question from the list}  #to_select_any_question
    Sleep    10s
    Click Element    xpath=//*[@class='mb-2 width1_4 cursor-pointer']   #to_click_edit-button
    Sleep    10s
    Click Element    xpath=//*[@class='btn cancel-btn btn btn-warning']      #xpath=//*[@class='btn cancel-btn btn btn-warning']
    Sleep    10s
    Input Text    xpath=//*[@class='input-group input-sm input_search_voice']/*[1]       من_اسس_مدرسة_عاشور
    Sleep    15s
    Input Text    xpath=//*[@class='col-xl-2 col-lg-4 col-md-4 col-sm-4'][1]/*[2]    50
    Sleep    10s
    Input Text    xpath=//*[@class='col-xl-2 col-lg-4 col-md-4 col-sm-4'][2]/*[2]   100
    Sleep    10s
    Click Element    xpath=//*[@class='btn save-btn']
    Sleep    10s
    Close Browser




Cancel adding version #اضافة_نموذج_في_نماذج_الاختبار
    ModelExams.Clicks on Add version button #الضغط_على_اضافة_نموذج_في_نماذج_الاختبار
    Sleep    10s
    Click Element    xpath=//*[@class='cancel-btn btn btn-warning']
    Close Browser


Search field Function
    Input Text    xpath=//*[@class='px-3 form-control UserLogin__FormControl bg-white border-md input-sm ng-untouched ng-pristine ng-valid']   ق7
    Sleep    10s
    Click Element    xpath=//*[@class='input-group-text bg-white pl-2 pr-2 border-md']
    Sleep    10s
    Element Should Be Visible   xpath=//*[@class='mat-tooltip-trigger p_header mb-0 px-3 pt-3']
    Sleep    5s
    Close Browser


Delete a Question from the List
     Click Element    xpath=//*[@class='list-group list-exam_form']/*[3]/*[23]/*[2]
     Sleep    15s
     Click Element    xpath=//*[@class='mat-focus-indicator mat-raised-button mat-button-base mat-primary']
     Sleep    15s
     Close Browser

# xpath of adding a new version button >> //*[@class='list-group list-exam_form']/*[1]/*[3]

Assert Question is selected correctly
    Click Element    ${Select question from the list}
    Sleep    10s
    Element Should Be Visible     //*[@class='row px-4 align-items-center mb-3']
    Sleep    10s
    Close Browser
    
Hossam
    Click Element    xpath=//*[@class='row setting-list']/*/*[7]
    Sleep    10s