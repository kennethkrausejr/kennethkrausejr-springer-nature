*** Settings ***
Library         SeleniumLibrary

***Keywords ***
a browser is opened to the home page
    goto  https://link.springer.com/
    log  a browser is opened to the home page

a user searches for a topic
    log  a user searches for a topic

a user can then refine their search
    log  a user can then refine their search

the results are displayed
    log  the results are displayed
