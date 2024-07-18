*** Settings ***
Library         SeleniumLibrary
Library           OperatingSystem
Resource          ../resources/HomePage.resource
Resource          ../resources/AuthPage.resource
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
Test Case 1: Register User
    #need to make account info variable
    [Documentation]    Register a new user on the website.
    HomePage.Launch Browser
    HomePage.Navigate to URL    ${BASE_URL}
    HomePage.Verify Home Page is Visible
    HomePage.Click Signup/Login Button
    HomePage.Verify Text    New User Signup!
    AuthPage.Enter Name and Email    Karim Hatem    ${EMAIL}
    AuthPage.Click Signup Button
    HomePage.Verify Text    Enter Account Information
    AuthPage.Fill Account Information    Mr.    ${PASSWORD}    1    6    2000
    AuthPage.Fill Mandatory Details    Karim    Hatem    123 Street    5    NasrCity    Cairo    911911    1234567890
    AuthPage.Select Checkboxes
    AuthPage.Click Create Account Button
    AuthPage.Verify Account Created
    HomePage.Click Continue Button
    HomePage.Verify Logged in as Username
#    HomePage.Click Delete Account Button
#    HomePage.Verify Account Deleted

Test Case 4: Logout User
    [Documentation]    Logout a logged-in user.
    HomePage.Launch Browser
#    HomePage.Navigate to URL    ${BASE_URL}
    HomePage.Verify Home Page is Visible
    HomePage.Click Login Button
    HomePage.Verify Text     تسجيل الدخول
    AuthPage.Enter Login Credentials    ${EMAIL}    ${PASSWORD}
    AuthPage.Click Login Button
    HomePage.Verify Logged in as Username
    HomePage.Click Logout Button
    HomePage.Verify Navigated to Home Page


Test Case 5: Register User with Existing Email
    [Documentation]    Attempt to register a user with an existing email.
    HomePage.Launch Browser
    HomePage.Navigate to URL    ${BASE_URL}
    HomePage.Verify Home Page is Visible
    HomePage.Click Signup/Login Button
    HomePage.Verify Text    New User Signup!
    AuthPage.Enter Name and Email    John Doe    ${EMAIL}
    AuthPage.Click Signup Button
    HomePage.Verify Text    Email Address already exist!

Test Case 2: Login User with Correct Email and Password
    [Documentation]    Login with correct credentials.
    HomePage.Launch Browser
    HomePage.Navigate to URL    ${BASE_URL}
    HomePage.Verify Home Page is Visible
    HomePage.Click Login Button
    HomePage.Verify Text    Login to your account
    AuthPage.Enter Login Credentials    ${EMAIL}    ${PASSWORD}
    AuthPage.Click Login Button
    HomePage.Verify Logged in as Username
    HomePage.Click Delete Account Button
    HomePage.Verify Account Deleted

Test Case 3: Login User with Incorrect Email and Password
    [Documentation]    Login with incorrect credentials.
    HomePage.Launch Browser
    HomePage.Navigate to URL    ${BASE_URL}
    HomePage.Verify Home Page is Visible
    HomePage.Click Signup/Login Button
    HomePage.Verify Text    Login to your account
    AuthPage.Enter Login Credentials    wrong@companymail.com    wrongpassword
    AuthPage.Click Login Button
    HomePage.Verify Text    Your email or password is incorrect!

