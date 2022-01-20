*** Settings ***
Resource    ../resources/search.robot

*** Test Cases ***
Find article using search and refine
    Given a browser is opened to the home page
    When a user searches for a topic
    And a user can then refine their search
    Then the results are displayed

