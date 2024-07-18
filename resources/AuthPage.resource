*** Settings ***
Library   SeleniumLibrary

*** Keywords ***
AuthPage.Enter Name and Email
    [Arguments]    ${name}    ${email}
    Input Text    name=name    ${name}
    Input Text    id=email    ${email}

AuthPage.Click Signup Button
    Click Element    xpath=//button[contains(@class,'UserLogin__SignUp')]

AuthPage.Fill Account Information
    [Arguments]    ${title}      ${password}    ${day}    ${month}    ${year}
    Select Radio Button    title    Mr
    Input Text    name=password    ${password}
    Select From List By Value   name=days    ${day}
    Select From List By Value   name=months    ${month}
    Select From List By Value   name=years    ${year}



AuthPage.Click Create Account Button
    Scroll Element Into View    xpath=//button[contains(text(),'Create Account')]
    Click Element    xpath=//button[contains(text(),'Create Account')]

AuthPage.Verify Account Created
    Page Should Contain   Account Created!
 #   Page Should Contain   //a[contains(text(),'Continue')]


 AuthPage.Enter Login Credentials
    [Arguments]    ${email}    ${password}
    Input Text    name=email    ${email}
    Input Text    name=password    ${password}

AuthPage.Click Login Button
    Click Element    xpath=//button[contains(@class,'UserLogin__Submit')]
    Sleep    5s


AuthPage.Fill Contact Us Form
    [Arguments]    ${name}    ${email}    ${subject}    ${message}
    Input Text    name=name    ${name}
    Input Text    name=email    ${email}
    Input Text    name=subject    ${subject}
    Input Text    name=message    ${message}

AuthPage.Upload File
    [Arguments]    ${file_path}
    Choose File    name=upload_file    ${file_path}
    Sleep    10s

AuthPage.Click Submit Button
    Click Element    xpath=//input[@type='submit']
    Sleep    10s

AuthPage.Click OK Button
    Alert Should Be Present
#    Handle Alert    ACCEPT




#AuthPage.Fill Mandatory Details
#    [Arguments]    ${firstname}    ${lastname}    ${address}    ${country}    ${state}    ${city}    ${zipcode}    ${mobile}
#    Input Text    name=first_name    ${firstname}
#    Input Text    name=last_name    ${lastname}
#    Input Text    name=address1    ${address}
#    Select From List By Index  name=country    ${country}
#    Input Text    name=state    ${state}
#    Input Text    name=city    ${city}
#    Input Text    name=zipcode    ${zipcode}
#    Input Text    name=mobile_number    ${mobile}
#
#AuthPage.Select Checkboxes
#    Select Checkbox    id:newsletter
#    Unselect Checkbox    id:optin







#*** Keywords ***
#Register New User  [Arguments]  ${name}  ${email}  ${password}
#    # Implement logic to fill registration form and submit
#    ...
#
#Verify Logged In User  [Arguments]  ${expected_username}
#    # Implement logic to verify logged-in user name
#    ...
