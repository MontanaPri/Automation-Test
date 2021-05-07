@BTRIS_Bug_Regression
@BTRIS_Quick_Smoke_Test
@Custom_List_Template_Upload

Feature: BTRIS Loading Search Term List Template Test Report.

  @Load_Radiology_Custom_List-1

  Scenario Outline: 1.1 Loading Search Term List Document and for Radiology.
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
    And the user waits for 2 seconds
    And the user verify if existing "<Search Term data>" exist and remove it
    And the user clicks on "custom search term list upload button" element on "Btris/Portal" page
    And the user remembers the value of "upload search term list page title" field into "Page Title" on "Btris/Portal" page
    And the user remembers the value of "overwrite existing list" field into "Page Text" on "Btris/Portal" page
    And the user enters "<User>" into "custom search term list: user field" on "Btris/Portal" page
    And the user remembers the value of "custom search term list: user" field into "User Name" on "Btris/Portal" page
    And the user clicks on "custom search term list: user" element on "Btris/Portal" page
    And the user clicks on "custom search term overwrite checkbox" element on "Btris/Portal" page
    And the user enters "<List Name>" into "custom search term list: list name field" on "Btris/Portal" page
    And the user enters "Automation Description Test New Text" into "custom search term list: description" text area box on "Btris/Portal" page
    And the user selects "<Domain>" from "custom search term list: domain drop down" drop down on "Btris/Portal" page
    #And the user verify if "<Search Term data>" document already exist and if not user uploads new "<Search Term Document>" and continue
    And user attached "<Search Term Document>" file into "custom search term list: brows upload" on "Btris/Portal" page
    And the user clicks on "custom search term list: upload button" element on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user must see "Upload succeeded" text in "upload status" field on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user enters "<Search Term data>" into "custom list search term box" on "Btris/Portal" page
    And the user must see "3" text in "loaded terms on search term list table" field on "Btris/Portal" page
    And the user must see "Search Term Lists" text in "search term list table" field on "Btris/Portal" page
    And the user must see "Automation Description Test New Text" text in "list description" field on "Btris/Portal" page

    #Sign out.
    And the user logged out of the system

    Examples:
      | Search Term data             | User_Name   | List Name                    | User                     | Domain                                      | Search Term Document                |
      | Test Radiology Test Template | btris_test2 | Test Radiology Test Template | BTRIS_TEST2 - TEST2 null | Radiology and Imaging Procedure Observation | Radiology_New_Search_Term_List - Copy.xlsx |



  @Load_Medication_Custom_List-2

  Scenario Outline: 1.2 Loading Search Term List Document and for Medication.
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
    And the user waits for 2 seconds
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
    #And the user verify if "<Search Term data>" document already exist and if not user uploads new "<Search Term Document>" and continue
    And user attached "<Search Term Document>" file into "custom search term list: brows upload" on "Btris/Portal" page
    And the user clicks on "custom search term list: upload button" element on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user must see "Upload succeeded" text in "upload status" field on "Btris/Portal" page
    And the user must see "16" text in "loaded terms on search term list table" field on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user must see "Search Term Lists" text in "search term list table" field on "Btris/Portal" page
    And the user clicks on "nav arrow to active protocol" element on "Btris/Portal" page

    #Sign out.
    And the user logged out of the system

    Examples:
      | Search Term data            | User_Name   | List Name                   | User                     | Domain      | Search Term Document              |
      | Load Medication Template 01 | btris_test2 | Load Medication Template 01 | BTRIS_TEST2 - TEST2 null | Medications | New_Medication_List_Template - Copy.xlsx |


  @Load_Pathology_Custom_List-3

  Scenario Outline: 1.3 Loading Search Term List Document and for Pathology.
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
    And the user clicks on "left nav: search term list" element on "Btris/Portal" page
    #Filter and remove search term list added by the test.
    And the user enters "<Search Term data>" into "custom list search term box" on "Btris/Portal" page
    And the user waits for 2 seconds
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
    #And the user verify if "<Search Term data>" document already exist and if not user uploads new "<Search Term Document>" and continue
    And user attached "<Search Term Document>" file into "custom search term list: brows upload" on "Btris/Portal" page
    And the user clicks on "custom search term list: upload button" element on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user must see "Upload succeeded" text in "upload status" field on "Btris/Portal" page
    And the user must see "7" text in "loaded terms on search term list table" field on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user must see "Search Term Lists" text in "search term list table" field on "Btris/Portal" page
    And the user clicks on "nav arrow to active protocol" element on "Btris/Portal" page

    #Sign out.
    And the user logged out of the system

    Examples:
      | Search Term data          | User_Name   | List Name                 | User                     | Domain                          | Search Term Document                 |
      | Load Pathology Document 1 | btris_test2 | Load Pathology Document 1 | BTRIS_TEST2 - TEST2 null | Pathology Consolidated Concepts | Load_Pathology_Search_Term_List - Copy.xlsx |



  @Load_ClinDoc_FT_Custom_List-4

  Scenario Outline: 1.4 Loading Search Term List Document and for Clinical Documents - Full Text.
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
    And the user clicks on "left nav: search term list" element on "Btris/Portal" page
    #Filter and remove search term list added by the test.
    And the user enters "<Search Term data>" into "custom list search term box" on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user verify if existing "<Search Term data>" exist and remove it
    And the user clicks on "custom search term list upload button" element on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user remembers the value of "upload search term list page title" field into "Page Title" on "Btris/Portal" page
    And the user remembers the value of "overwrite existing list" field into "Page Text" on "Btris/Portal" page
    And the user enters "<User>" into "custom search term list: user field" on "Btris/Portal" page
    And the user remembers the value of "custom search term list: user" field into "User Name" on "Btris/Portal" page
    And the user clicks on "custom search term list: user" element on "Btris/Portal" page
    And the user clicks on "custom search term overwrite checkbox" element on "Btris/Portal" page
    And the user enters "<List Name>" into "custom search term list: list name field" on "Btris/Portal" page
    And the user enters "Automation Description Test Text" into "custom search term list: description" text area box on "Btris/Portal" page
    And the user selects "<Domain>" from "custom search term list: domain drop down" drop down on "Btris/Portal" page
    #And the user verify if "<Search Term data>" document already exist and if not user uploads new "<Search Term Document>" and continue
    And user attached "<Search Term Document>" file into "custom search term list: brows upload" on "Btris/Portal" page
    And the user clicks on "custom search term list: upload button" element on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user must see "Upload succeeded" text in "upload status" field on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user must see "8" text in "loaded terms on search term list table" field on "Btris/Portal" page
    And the user must see "Search Term Lists" text in "search term list table" field on "Btris/Portal" page
    And the user clicks on "nav arrow to active protocol" element on "Btris/Portal" page

    #Sign out.
    And the user logged out of the system

    Examples:
      | Search Term data           | User_Name   | List Name                  | User                     | Domain             | Search Term Document              |
      | Load Clinical Documents 01 | btris_test4 | Load Clinical Documents 01 | BTRIS_TEST2 - TEST2 null | Clinical Documents | New_Clinical_Doc_FT_Template - Copy.xlsx |


  @Load_ClinDoc_FT_Custom_List-5

  Scenario Outline: 1.5 Loading Search Term List Document and for Lab.
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
    And the user clicks on "left nav: search term list" element on "Btris/Portal" page
    #Filter and remove search term list added by the test.
    And the user enters "<Search Term data>" into "custom list search term box" on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user verify if existing "<Search Term data>" exist and remove it
    And the user clicks on "custom search term list upload button" element on "Btris/Portal" page
    And the user remembers the value of "upload search term list page title" field into "Page Title" on "Btris/Portal" page
    And the user remembers the value of "overwrite existing list" field into "Page Text" on "Btris/Portal" page
    And the user enters "<User>" into "custom search term list: user field" on "Btris/Portal" page
    And the user remembers the value of "custom search term list: user" field into "User Name" on "Btris/Portal" page
    And the user clicks on "custom search term list: user" element on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user clicks on "custom search term overwrite checkbox" element on "Btris/Portal" page
    And the user enters "<List Name>" into "custom search term list: list name field" on "Btris/Portal" page
    And the user enters "Automation Description Test Text" into "custom search term list: description" text area box on "Btris/Portal" page
    And the user selects "<Domain>" from "custom search term list: domain drop down" drop down on "Btris/Portal" page
    #And the user verify if "<Search Term data>" document already exist and if not user uploads new "<Search Term Document>" and continue
    And user attached "<Search Term Document>" file into "custom search term list: brows upload" on "Btris/Portal" page
    And the user clicks on "custom search term list: upload button" element on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user must see "Upload succeeded" text in "upload status" field on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user must see "17" text in "loaded terms on search term list table" field on "Btris/Portal" page
    And the user must see "Search Term Lists" text in "search term list table" field on "Btris/Portal" page
    And the user clicks on "nav arrow to active protocol" element on "Btris/Portal" page

    #Sign out.
    And the user logged out of the system

    Examples:
      | Search Term data              | User_Name   | List Name                 | User                     | Domain          | Search Term Document                 |
      | T - Load Lab Search Term List | btris_test2 | Load Lab Search Term List | BTRIS_TEST2 - TEST2 null | Lab Observation | Load_Lab_Search_Tearm_List_Data - Copy.xlsx |


  @Load_Vital_Signs_Custom_List-6

  Scenario Outline: 1.6 Loading Search Term List Document and for Vital Signs.
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
    And the user clicks on "left nav: search term list" element on "Btris/Portal" page
    #Filter and remove search term list added by the test.
    And the user enters "<Search Term data>" into "custom list search term box" on "Btris/Portal" page
    And the user waits for 2 seconds
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
    #And the user verify if "<Search Term data>" document already exist and if not user uploads new "<Search Term Document>" and continue
    And user attached "<Search Term Document>" file into "custom search term list: brows upload" on "Btris/Portal" page
    And the user clicks on "custom search term list: upload button" element on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user must see "Upload succeeded" text in "upload status" field on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user must see "14" text in "loaded terms on search term list table" field on "Btris/Portal" page
    And the user must see "Search Term Lists" text in "search term list table" field on "Btris/Portal" page
    And the user clicks on "nav arrow to active protocol" element on "Btris/Portal" page

    #Sign out.
    And the user logged out of the system

    Examples:
      | Search Term data                      | User_Name   | List Name                         | User                     | Domain      | Search Term Document                     |
      | T - Load Vital Signs Search Term List | btris_test2 | Load Vital Signs Search Term List | BTRIS_TEST2 - TEST2 null | Vital Signs | Load_Vitals_Search_Term_List - Copy.xlsx |


  @Load_Vital_Signs_Custom_List-7

  Scenario Outline: 1.6 Loading Search Term List Document and for Vital Signs for Test User 1.
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
    And the user clicks on "left nav: search term list" element on "Btris/Portal" page
    #Filter and remove search term list added by the test.
    And the user enters "<Search Term data>" into "custom list search term box" on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user verify if existing "<Search Term data>" exist and remove it
    And the user clicks on "custom search term list upload button" element on "Btris/Portal" page
    And the user remembers the value of "upload search term list page title" field into "Page Title" on "Btris/Portal" page
    And the user remembers the value of "overwrite existing list" field into "Page Text" on "Btris/Portal" page
    And the user enters "<List Name>" into "custom search term list: list name field" on "Btris/Portal" page
    And the user clicks on "custom search term overwrite checkbox" element on "Btris/Portal" page
    And the user enters "Automation Description Test Text" into "custom search term list: description" text area box on "Btris/Portal" page
    And the user selects "<Domain>" from "custom search term list: domain drop down" drop down on "Btris/Portal" page
    #And the user verify if "<Search Term data>" document already exist and if not user uploads new "<Search Term Document>" and continue
    And user attached "<Search Term Document>" file into "custom search term list: brows upload" on "Btris/Portal" page
    And the user clicks on "custom search term list: upload button" element on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user must see "Upload succeeded" text in "upload status" field on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user must see "14" text in "loaded terms on search term list table" field on "Btris/Portal" page
    And the user must see "Search Term Lists" text in "search term list table" field on "Btris/Portal" page
    And the user clicks on "nav arrow to active protocol" element on "Btris/Portal" page

    #Sign out.
    And the user logged out of the system

    Examples:
      | Search Term data                     | User_Name   | List Name                        | Domain      | Search Term Document                     |
      | T - Load Vital Signs List Test_User1 | btris_test1 | Load Vital Signs List Test_User1 | Vital Signs | Load_Vitals_Search_Term_List - Copy.xlsx |



  @Load_Vital_Signs_Custom_List-8

  Scenario Outline: 1.6 Loading Search Term List Document and for Vital Signs for Test User 3.
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
    And the user clicks on "left nav: search term list" element on "Btris/Portal" page
    #Filter and remove search term list added by the test.
    And the user enters "<Search Term data>" into "custom list search term box" on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user verify if existing "<Search Term data>" exist and remove it
    And the user clicks on "custom search term list upload button" element on "Btris/Portal" page
    And the user remembers the value of "upload search term list page title" field into "Page Title" on "Btris/Portal" page
    And the user remembers the value of "overwrite existing list" field into "Page Text" on "Btris/Portal" page
    And the user enters "<List Name>" into "custom search term list: list name field" on "Btris/Portal" page
    And the user clicks on "custom search term overwrite checkbox" element on "Btris/Portal" page
    And the user enters "Automation Description Test Text" into "custom search term list: description" text area box on "Btris/Portal" page
    And the user selects "<Domain>" from "custom search term list: domain drop down" drop down on "Btris/Portal" page
    #And the user verify if "<Search Term data>" document already exist and if not user uploads new "<Search Term Document>" and continue
    And user attached "<Search Term Document>" file into "custom search term list: brows upload" on "Btris/Portal" page
    And the user clicks on "custom search term list: upload button" element on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user must see "Upload succeeded" text in "upload status" field on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user must see "14" text in "loaded terms on search term list table" field on "Btris/Portal" page
    And the user must see "Search Term Lists" text in "search term list table" field on "Btris/Portal" page
    And the user clicks on "nav arrow to active protocol" element on "Btris/Portal" page

    #Sign out.
    And the user logged out of the system

    Examples:
      | Search Term data                     | User_Name   | List Name                        | Domain      | Search Term Document                     |
      | T - Load Vital Signs List Test_User3 | btris_test3 | Load Vital Signs List Test_User3 | Vital Signs | Load_Vitals_Search_Term_List - Copy.xlsx |