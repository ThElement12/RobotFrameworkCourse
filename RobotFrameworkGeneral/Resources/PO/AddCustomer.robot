*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${ADD_CUSTOMER_HEADER_LABEL} =  Add Customer
${ADD_CUSTOMER_SUBMIT_BUTTON} =  Submit

${ADD_CUSTOMER_EMAIL_FIELD} =  id=EmailAddress
${ADD_CUSTOMER_NAME_FIELD} =  id=FirstName
${ADD_CUSTOMER_LAST_NAME_FIELD} =  id=LastName
${ADD_CUSTOMER_CITY_FIELD} =  id=City
${ADD_CUSTOMER_STATE_DROPDOWN} =  id=StateOrRegion
${ADD_CUSTOMER_GENDER_RADIO} =  gender
${ADD_CUSTOMER_PROMO_CHECKBOX} =  name=promos-name


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    ${ADD_CUSTOMER_HEADER_LABEL}

Add New Customer
    Fill Customer Fields
    Clicks Submit Button

Fill Customer Fields
    Input Text                  ${ADD_CUSTOMER_EMAIL_FIELD}         email@test.com
    Input Text                  ${ADD_CUSTOMER_NAME_FIELD}          Joseph
    Input Text                  ${ADD_CUSTOMER_LAST_NAME_FIELD}     De Los Santos
    Input Text                  ${ADD_CUSTOMER_CITY_FIELD}          Santiago
    Select From List By Value   ${ADD_CUSTOMER_STATE_DROPDOWN}      TX
    Select Radio Button         ${ADD_CUSTOMER_GENDER_RADIO}        male
    Select Checkbox             ${ADD_CUSTOMER_PROMO_CHECKBOX}

Clicks Submit Button
    Click Button                ${ADD_CUSTOMER_SUBMIT_BUTTON}