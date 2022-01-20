*** Settings ***
Library     SeleniumLibrary
Resource    ./po/link_home.robot
Resource    ./po/advance_search.robot

***Keywords ***
a browser is opened to the home page
    goto  https://link.springer.com/
    Verify "Home" Page Loads
    sleep  2s  ## Adding sleep for the recording

a user searches for a topic
    Fill In "Search Query" Field  Covid
    sleep  1s  ## Adding sleep for the recording
    Click On "Search" Button
    sleep  2s  ## Adding sleep for the recording

a user can then refine their search
    Click On "Advance Search" Link
    sleep  2s  ## Adding sleep for the recording
    Fill In "Title" Field  "Pediatric Oncology"
    sleep  2s  ## Adding sleep for the recording    
    Click On "Search" for Advance Search
    sleep  4s  ## Adding sleep for the recording    

the results are displayed
    Click On First Article in List
    sleep  2s
