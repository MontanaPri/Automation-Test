@BTRIS_Bug_Regression
@Custom_List_Template
@BA-1992
Feature: BUG BA-1992 Cluster IDs List Templates Take >60 seconds to upload


  @BA-1992.1

  Scenario Outline: 1. Cluster IDs List Templates Upload.
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
    And the user enters "Automation Description Test Text" into "custom search term list: description" text area box on "Btris/Portal" page
    And the user selects "<Domain>" from "custom search term list: domain drop down" drop down on "Btris/Portal" page
    And user attached "<Search Term Document>" file into "custom search term list: brows upload" on "Btris/Portal" page
    And the user clicks on "custom search term list: upload button" element on "Btris/Portal" page
    And the user must see "<Upload Status Message>" text in "all upload status" field on "Btris/Portal" page
    Examples:
      | Search Term data   | User_Name   | List Name          | User                     | Domain          | Search Term Document                    | Upload Status Message |
      | Bug Cluster IDs 01 | btris_test2 | Bug Cluster IDs 01 | BTRIS_TEST2 - TEST2 null | Lab Observation | Search_Term_List_19-HG-0059-Annual.xlsx | Upload succeeded      |

