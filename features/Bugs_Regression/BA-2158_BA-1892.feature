@BTRIS_Bug_Regression_Unstable
@Custom_Delete_List_Unstable
@BA-2158
Feature: BUG BA-2158 and BA-1892 Can't delete list added with the same name and or edit the description.

  @Delete_List_Twice1_Unstable

  Scenario Outline: 1.1 Cannot delete search term list after deleting a list with the same name.
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
    And the user clicks on "left nav: search term list" element on "Btris/Portal" page
    #Filter and remove search term list added by the test.
    And the user enters "<Search Term data>" into "custom list search term box" on "Btris/Portal" page
    And the user verify if existing "<Search Term data>" exist and remove it
    And the user clicks on "custom search term list upload button" element on "Btris/Portal" page
    And the user remembers the value of "upload search term list page title" field into "Page Title" on "Btris/Portal" page
    And the user remembers the value of "overwrite existing list" field into "Page Text" on "Btris/Portal" page
    And the user enters "<User>" into "custom search term list: user field" on "Btris/Portal" page
    And the user remembers the value of "custom search term list: user" field into "User Name" on "Btris/Portal" page
    And the user clicks on "custom search term list: user" element on "Btris/Portal" page
    And the user clicks on "custom search term overwrite checkbox" element on "Btris/Portal" page
    And the user enters "<List Name>" into "custom search term list: list name field" on "Btris/Portal" page
    And the user enters "Automation Description Test Old Text" into "custom search term list: description" text area box on "Btris/Portal" page
    And the user selects "<Domain>" from "custom search term list: domain drop down" drop down on "Btris/Portal" page
    #And the user verify if "<Search Term data>" document already exist and if not user uploads new "<Search Term Document>" and continue
    And user attached "<Search Term Document>" file into "custom search term list: brows upload" on "Btris/Portal" page
    And the user clicks on "custom search term list: upload button" element on "Btris/Portal" page
    And the user must see "Upload succeeded" text in "upload status" field on "Btris/Portal" page
    And the user waits for 4 seconds
    And the user enters "<Search Term data>" into "custom list search term box" on "Btris/Portal" page
    And the user verify if the added list is disply on the lists table
    And the user must see "Search Term Lists" text in "search term list table" field on "Btris/Portal" page
    And the user must see "Automation Description Test Old Text" text in "list description" field on "Btris/Portal" page
    And the user clicks on "custom search term list upload button" element on "Btris/Portal" page
    And the user remembers the value of "upload search term list page title" field into "Page Title" on "Btris/Portal" page
    And the user remembers the value of "overwrite existing list" field into "Page Text" on "Btris/Portal" page
    And the user enters "<User>" into "custom search term list: user field" on "Btris/Portal" page
    And the user remembers the value of "custom search term list: user" field into "User Name" on "Btris/Portal" page
    And the user clicks on "custom search term list: user" element on "Btris/Portal" page
    And the user waits for 1 seconds
    And the user clicks on "custom search term overwrite checkbox" element on "Btris/Portal" page
    And the user enters "<List Name>" into "custom search term list: list name field" on "Btris/Portal" page
    And the user enters "Automation Description Test New Text" into "custom search term list: description" text area box on "Btris/Portal" page
    And the user selects "<Domain>" from "custom search term list: domain drop down" drop down on "Btris/Portal" page
    #And the user verify if "<Search Term data>" document already exist and if not user uploads new "<Search Term Document>" and continue
    And user attached "<Search Term Document>" file into "custom search term list: brows upload" on "Btris/Portal" page
    And the user clicks on "custom search term list: upload button" element on "Btris/Portal" page
    And the user must see "Upload succeeded" text in "upload status" field on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user enters "<Search Term data>" into "custom list search term box" on "Btris/Portal" page
    And the user verify if the added list is disply on the lists table
    And the user must see "Search Term Lists" text in "search term list table" field on "Btris/Portal" page
    And the user must see "Automation Description Test New Text" text in "list description" field on "Btris/Portal" page
    And the user verify if existing "<Search Term data>" exist and remove it
    And the user must see "No search term lists found" text in "search term list name display" field on "Btris/Portal" page
    And the user clicks on "reference list" element on "Btris/Portal" page
    #Filter and remove Reference list added by the test.
    And the user enters "<Reference Name>" into "reference list: search box" on "Btris/Portal" page
    And the user verify if existing "<Reference Name>" data exist and remove it
    And the user clicks on "custom reference lists upload button" element on "Btris/Portal" page
    And the user remembers the value of "upload reference list page title" field into "Reference List Page Title" on "Btris/Portal" page
    And the user remembers the value of "overwrite existing reference list" field into "Page Text" on "Btris/Portal" page
    And the user enters "<User>" into "custom reference list: user field" on "Btris/Portal" page
    And the user clicks on "custom reference list: user" element on "Btris/Portal" page
    And the user enters "<Reference Name>" into "reference list: list name field" on "Btris/Portal" page
    And the user clicks on "reference list: overwrite checkbox" element on "Btris/Portal" page
    And the user enters "Automation Ref Description Test Old Text" into "reference list: description" text area box on "Btris/Portal" page
    And the user enters "<Reference Date Type>" into "reference list: date type" on "Btris/Portal" page
    #And the user verify if "<Reference Name>" document already exist and if not user uploads new "<Reference Term Document>" and continue
    And user attached "<Reference Term Document>" file into "reference list: brows upload" on "Btris/Portal" page
    And the user clicks on "reference list: upload button" element on "Btris/Portal" page
    And the user must see "Upload succeeded" text in "upload status" field on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user enters "<Reference Name>" into "reference list: search box" on "Btris/Portal" page
    And the user verify if the added list is disply on the lists table
    And the user must see "Automation Ref Description Test Old Text" text in "list description" field on "Btris/Portal" page
    And the user verify if existing "<Reference Name>" data exist and remove it
    And the user clicks on "custom reference lists upload button" element on "Btris/Portal" page
    And the user remembers the value of "upload reference list page title" field into "Reference List Page Title" on "Btris/Portal" page
    And the user remembers the value of "overwrite existing reference list" field into "Page Text" on "Btris/Portal" page
    And the user enters "<User>" into "custom reference list: user field" on "Btris/Portal" page
    And the user clicks on "custom reference list: user" element on "Btris/Portal" page
    And the user waits for 1 seconds
    And the user enters "<Reference Name>" into "reference list: list name field" on "Btris/Portal" page
    And the user clicks on "reference list: overwrite checkbox" element on "Btris/Portal" page
    And the user enters "Automation Ref Description Test New Text" into "reference list: description" text area box on "Btris/Portal" page
    And the user enters "<Reference Date Type>" into "reference list: date type" on "Btris/Portal" page
    #And the user verify if "<Reference Name>" document already exist and if not user uploads new "<Reference Term Document>" and continue
    And user attached "<Reference Term Document>" file into "reference list: brows upload" on "Btris/Portal" page
    And the user clicks on "reference list: upload button" element on "Btris/Portal" page
    And the user must see "Upload succeeded" text in "upload status" field on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user enters "<Reference Name>" into "reference list: search box" on "Btris/Portal" page
    And the user waits for 1 seconds
    And the user verify if the added list is disply on the lists table
    And the user must see "Automation Ref Description Test New Text" text in "list description" field on "Btris/Portal" page
    And the user verify if existing "<Reference Name>" data exist and remove it
    And the user delete "<Reference Name>" added the second time
    And the user enters "<Reference Name>" into "reference list: search box" on "Btris/Portal" page
    And the user must see "No reference lists found" text in "reference list name display" field on "Btris/Portal" page

    #Sign out.
    And the user logged out of the system

    Examples:
      | Search Term data               | User_Name   | List Name                      | User                     | Domain                                      | Search Term Document                | Reference Name               | Reference Date Type | Reference Term Document           |
      | Delete Radiology Test Template | btris_test2 | Delete Radiology Test Template | BTRIS_TEST2 - TEST2 null | Radiology and Imaging Procedure Observation | Radiology_New_Search_Term_List.xlsx | Delete New Reference List DN | MM/DD/YYYY          | Radiology_New_Reference_List.xlsx |

