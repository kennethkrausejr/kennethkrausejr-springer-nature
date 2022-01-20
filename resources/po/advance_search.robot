*** Settings ***
Documentation   Advance search functionality. 
Library         SeleniumLibrary
Variables       ./locators.yaml

*** Keywords ***
Fill In "Title" Field
    [Arguments]  ${qstring}
    wait until element is visible  ${link.advance_search.title}
    input text  ${link.advance_search.title}  ${qstring}

Click On "Search" for Advance Search
    wait until element is visible  ${link.advance_search.search}
    click element  ${link.advance_search.search}

Click On First Article in List
    wait until element is visible  ${link.advance_search.results.list}
    wait until element is visible  ${link.advance_search.results.list_item_1}
    click element  ${link.advance_search.results.list_item_1}
