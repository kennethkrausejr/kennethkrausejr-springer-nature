*** Settings ***
Documentation   Keywords that will be used by many tests or other keyword files. 
Library         SeleniumLibrary  timeout=60s

*** Keywords ***
Begin Web Test
    [Arguments]  ${browser}
    open browser  about:blank  ${browser}

End Web Test
    close browser
    