*** Settings ***
Library             SeleniumLibrary

*** Keywords ***
Begin Web Test
    [Arguments]    ${start_url}  ${browser}
#    Set selenium speed      .2s
    Set selenium timeout    10s
    log                     Starting the test case!
    open browser            about:blank  ${browser}

    Set window position         x=341   y=169
    Set window size             width=1920  height=1080

Close Browser After Seconds
#    sleep               3s
    Close All Browsers
