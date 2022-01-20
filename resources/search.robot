*** Settings ***
Library         SeleniumLibrary
Resource        ./po/link_home.robot

***Keywords ***
a browser is opened to the home page
    goto  https://link.springer.com/
    Verify "Home" Page Loads
    sleep  2s  ## Adding sleep for the recording

a user searches for a topic
    Fill In "Search Query" Field  Covid
    sleep  1s  ## Adding sleep for the recording
    Click On "Search" Button
    log  a user searches for a topic

a user can then refine their search
    log  a user can then refine their search

the results are displayed
    log  the results are displayed
