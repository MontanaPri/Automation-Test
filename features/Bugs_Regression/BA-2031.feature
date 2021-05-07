@BTRIS_Bug_Regression_Unstable
@Custom_List_Sorting
@BA-2031
Feature: BUG BA-2031 Custom List Sorting Management


  @BA-2031.1

  Scenario Outline: 1.1 Adding Search Term List for Sorting.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login with "<User_Name>" to the btris application
    And verify that "<User_Name>" account load properly
    #Verify the condition page to accespt it.
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Clcik on the user drop down.
    And the user clicks on "custom user drop down" element on "Btris/Portal" page
    #Clcik on custom list.
    And the user clicks on "custom list" element on "Btris/Portal" page
    And the user remembers the value of "custom list header" field into "Custom Lists Page" on "Btris/Portal" page
    And the user clicks on "left nav: search term list" element on "Btris/Portal" page
    #Filter and remove search term list added by the test.
    And the user enters "<Search Term data 1>" into "custom list search term box" on "Btris/Portal" page
    And the user verify if existing "<Search Term data 1>" exist and remove it
    And the user enters "<Search Term data 2>" into "custom list search term box" on "Btris/Portal" page
    And the user verify if existing "<Search Term data 2>" exist and remove it
    And the user enters "<Search Term data 3>" into "custom list search term box" on "Btris/Portal" page
    And the user verify if existing "<Search Term data 3>" exist and remove it
    And the user enters "<User>" and "<Search Term data 1>" and select "<Domain>" then attached "<Search Term Document>" on the custom list page
    And the user enters "<User>" and "<Search Term data 2>" and select "<Domain>" then attached "<Search Term Document>" on the custom list page
    And the user enters "<User>" and "<Search Term data 3>" and select "<Domain>" then attached "<Search Term Document>" on the custom list page
    And user refresh the browser
    And the user remembers the value of "custom list header" field into "Custom Lists Page" on "Btris/Portal" page
    And the user enters "<Search Term data>" into "custom list search term box" on "Btris/Portal" page
    And the user waits for 1 seconds
    And the user must see "<Search Term data 1>" text in "search term list sort 1" field on "Btris/Portal" page
    And the user must see "<Search Term data 2>" text in "search term list sort 2" field on "Btris/Portal" page
    And the user must see "<Search Term data 3>" text in "search term list sort 3" field on "Btris/Portal" page

    Examples:
      | Search Term data 1 | User_Name   | User                     | Domain          | Search Term Document        | Search Term data 2    | Search Term data 3    | Search Term data |
      | a Laboratory A 101 | btris_test4 | BTRIS_TEST2 - TEST2 null | Lab Observation | Search_Tearm_List_Data.xlsx | A Laboratory b DN 102 | a Laboratory C DN 103 | A Laboratory     |


  @BA-2031.2

  Scenario Outline: 1.2 Adding Reference List for Sorting.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login with "<User_Name>" to the btris application
    #Verify the condition page to accespt it.
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Clcik on the user drop down.
    And the user clicks on "custom user drop down" element on "Btris/Portal" page
    #Clcik on custom list.
    And the user clicks on "custom list" element on "Btris/Portal" page
    And the user remembers the value of "custom list header" field into "Custom Lists Page" on "Btris/Portal" page
    And the user clicks on "reference list" element on "Btris/Portal" page
    #Filter and remove Reference list added by the test.
    And the user enters "<Reference List 1>" into "reference list: search box" on "Btris/Portal" page
    And the user verify if existing "<Reference List 1>" data exist and remove it
    And the user enters "<Reference List 2>" into "reference list: search box" on "Btris/Portal" page
    And the user verify if existing "<Reference List 2>" data exist and remove it
    And the user enters "<Reference List 3>" into "reference list: search box" on "Btris/Portal" page
    And the user verify if existing "<Reference List 3>" data exist and remove it
    And the user enters "<User>" and "<Reference List 1>" and "<Reference Date Type>" then attached "<Reference Term Document>" on the custom list page for reference list
    And the user enters "<User>" and "<Reference List 2>" and "<Reference Date Type>" then attached "<Reference Term Document>" on the custom list page for reference list
    And the user enters "<User>" and "<Reference List 3>" and "<Reference Date Type>" then attached "<Reference Term Document>" on the custom list page for reference list
    And user refresh the browser
    And the user remembers the value of "custom list header" field into "Custom Lists Page" on "Btris/Portal" page
    And the user enters "<Sort Reference List>" into "reference list: search box" on "Btris/Portal" page
    And the user waits for 1 seconds
    And the user must see "<Reference List 1>" text in "reference list sort 1" field on "Btris/Portal" page
    And the user must see "<Reference List 2>" text in "reference list sort 2" field on "Btris/Portal" page
    And the user must see "<Reference List 3>" text in "reference list sort 3" field on "Btris/Portal" page

    Examples:
      | User_Name   | Reference List 1          | Reference Date Type | Reference Term Document      | Reference List 2          | Reference List 3          | Sort Reference List | User                     |
      | btris_test2 | A Reference List a 101 DN | MM/DD/YYYY          | Reference_List_Template.xlsx | A Reference List B 102 DN | a Reference List c 103 DN | A Reference List    | BTRIS_TEST2 - TEST2 null |
