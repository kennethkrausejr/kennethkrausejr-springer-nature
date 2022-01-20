*** Settings ***
Documentation   Home page for Link
Library         SeleniumLibrary
Variables       ./locators.yaml

*** Keywords ***
Verify "Home" Page Loads
    wait until element is visible  ${link.home.search_input}

Fill In "Search Query" Field
    [Arguments]  ${search_string}
    wait until element is visible  ${link.home.search_input}
    input text  ${link.home.search_input}  ${search_string}

Click On "Search" Button
    wait until element is visible  ${link.home.search_start}
    click element  ${link.home.search_start}

Click On "Search Options" Image
    wait until element is visible  ${link.home.search_options}
    click element  ${link.home.search_options}

Click On "Advance Search" Link
    Click On "Search Options" Image
    wait until element is visible  ${link.home.search_advance}
    click element  ${link.home.search_advance}
