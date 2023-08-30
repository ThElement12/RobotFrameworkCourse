*** Settings ***
Documentation       This is some basic info about the whole suite
Resource        ../Resources/CrmApp.robot
Resource        ../Resources/Common.robot

Test Setup      Begin Web Test  https://automationplayground.com/crm  chrome
Test Teardown   Close Browser After Seconds

#Run the script:
#robot -d results tests/crm.robot
*** Variables ***
${URL} =  https://automationplayground.com/crm
${BROWSER} =  chrome
${VALID_LOGIN_EMAIL} =  admin@robotframeworktutorial.com
${VALID_LOGIN_PASSWORD} =  123456

*** Test Cases ***
Home paga should load
    [Documentation]         Test the homepage
    [Tags]                  1001    Smoke   Home
    CrmApp.Go to "Home" Page

Should be able to Login With Valid Credentials
    [Documentation]         Test the login
    [Tags]                  1002    Smoke   Login
    CrmApp.Go to "Home" Page
    CrmApp.Login With Valid Credentials  ${VALID_LOGIN_EMAIL}  ${VALID_LOGIN_PASSWORD}

Should be able to Log Out
    [Documentation]         Test the log out
    [Tags]                  1004    Smoke   LogOut
    CrmApp.Go to "Home" Page
    CrmApp.Login With Valid Credentials  ${VALID_LOGIN_EMAIL}  ${VALID_LOGIN_PASSWORD}
    CrmApp.Sign Out


Should be able to add new customer
    [Documentation]         Test Adding a new Customer
    [Tags]                  1006    Smoke   Contacts
    CrmApp.Go to "Home" Page
    CrmApp.Login With Valid Credentials  ${VALID_LOGIN_EMAIL}  ${VALID_LOGIN_PASSWORD}
    CrmApp.Add New Customer
    CrmApp.Sign Out



