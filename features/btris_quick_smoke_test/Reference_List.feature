@BTRIS_Quick_Smoke_Test_Unstable
@ReferenceList_Radiology_QST
Feature: BTRIS Reference List Test Report


  @Vital_Signs-1

  Scenario Outline: 1.1 Running Reports Search for Vital Signs Reports Criteria, 5 days.
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
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #Verify and click on Reference List Report top na.
    And the user remembers the value of "reference list top nav" field into "Report Type" on "Btris/Portal" page
    And the user clicks on "reference list top nav" element on "Btris/Portal" page
    #click on the Laboratory Test.
    And the user remembers the value of "reference list reports: vital sign" field into "Criteria List" on "Btris/Portal" page
    #click on the Vital Sign Test.
    And the user clicks on "reference list vital sign" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "reference list vital signs report filter page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Vital Signs Criteria" text in "reference list vital signs report filter page" field on "Btris/Portal" page
    And the user selects "<Reference Name>" from "reference list drop down" search term list drop down and "<Reference Date Type>" and "<Reference Term Document>" then reenter "<New Reference Name>" on "Btris/Portal" page
    And the user enters "<Number of Days Before>" into "reference list day range text box" on "Btris/Portal" page
    And the user enters "<Number of Days After>" into "number of days after text box" on "Btris/Portal" page
    And the user enters "<Number of Values>" into "number of values text box" on "Btris/Portal" page
    And the user verify and select selects "<Labs>" from "labs drop down" drop down and provide "<New Lab>" and "<User>" and "<Domain>" and "<Search Term Document>" on "Btris/Portal" page
    And the user remembers the value of "preview header" field into "Results Preview - Page" on "Btris/Portal" page
    And the user verify if the report failed
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Vital Signs Results Preview - Standard" text in "reference list: vital signs report results table" field on "Btris/Portal" page
    #Verify and validate the Results.
    And the user remembers the value of "vital sign rl results" field into "Loaded Vital Sign Reference List Report" on "Btris/Portal" page
    #And the user verify the reference list vital sign report and "<Validation Record>" on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "vital sign rl results" field into "Loaded Vital Sign Reference List Report" on "Btris/Portal" page
    And the user must see "Vital Signs Results Preview - Standard" text in "reference list: vital signs report results table" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Labs                          | User_Name   | Number of Values | Number of Days Before | New Lab                   | Number of Days After | User                     | Domain      | Search Term Document                       | Reference Name            | Reference Date Type | Reference Term Document             | New Reference Name    |
      | T - New Vital Signs Template1 | btris_test2 | 5                | 230                   | New Vital Signs Template1 | 230                  | BTRIS_TEST2 - TEST2 null | Vital Signs | First_Vital_Sign_Search_Term_List_New.xlsx | T - New Reference List DN | MM/DD/YYYY          | Vital_Signs_Reference_List_New.xlsx | New Reference List DN |

  @Radiology-2

  Scenario Outline: 1.2 Running Reports Search for Radiology Reports Criteria, 15 days.
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
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #Verify and click on Reference List Report top na.
    And the user remembers the value of "reference list top nav" field into "Report Type" on "Btris/Portal" page
    And the user clicks on "reference list top nav" element on "Btris/Portal" page
    #click on the Laboratory Test.
    And the user remembers the value of "reference list reports: radiology" field into "Criteria List" on "Btris/Portal" page
    #click on the Radiology Test.
    And the user clicks on "reference list radiology" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "reference list radiology report filter page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Radiology Criteria" text in "reference list radiology report filter page" field on "Btris/Portal" page
    And the user selects "<Reference Name>" from "reference list drop down" search term list drop down and "<Reference Date Type>" and "<Reference Term Document>" then reenter "<New Reference Name>" on "Btris/Portal" page
    And the user enters "<Number of Days Before>" into "reference list day range text box" on "Btris/Portal" page
    And the user enters "<Number of Days After>" into "number of days after text box" on "Btris/Portal" page
    And the user enters "<Number of Values>" into "number of values text box" on "Btris/Portal" page
    And the user verify and select selects "<Labs>" from "labs drop down" drop down and provide "<Labs>" and "<User>" and "<Domain>" and "<Search Term Document>" on "Btris/Portal" page
    And the user remembers the value of "preview header" field into "Results Preview - Page" on "Btris/Portal" page
    And the user verify if the report failed
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Radiology Results Preview - Standard" text in "reference list: radiology report results table" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user remembers the value of "radiology rl results" field into "Loaded Radiology Report" on "Btris/Portal" page
    #And the user verify the reference list "<Validation Record>" radiology report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "radiology rl results" field into "Loaded Radiology Report" on "Btris/Portal" page
    And the user must see "Radiology Results Preview - Standard" text in "reference list: radiology report results table" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Labs                        | User_Name   | Number of Values | Number of Days Before | Reference Name        | Number of Days After | User_Name   | User                     | Domain                                      | Search Term Document                | Reference Name            | Reference Date Type | Reference Term Document           | New Reference Name    |
      | T - Radiology Test Template | btris_test2 | 15               | 300                   | New Reference List DN | 200                  | btris_test2 | BTRIS_TEST2 - TEST2 null | Radiology and Imaging Procedure Observation | Radiology_New_Search_Term_List.xlsx | T - New Reference List DN | MM/DD/YYYY          | Radiology_New_Reference_List.xlsx | New Reference List DN |


  @Pathology-3

  Scenario Outline: 1.2 Running Reports Search for Pathology Report Criteria, 15days.
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
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #Verify and click on Reference List Report top na.
    And the user remembers the value of "reference list top nav" field into "Report Type" on "Btris/Portal" page
    And the user clicks on "reference list top nav" element on "Btris/Portal" page
    #click on the Laboratory Test.
    And the user remembers the value of "reference list reports: pathology" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "reference list pathology" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "reference list pathology report filter page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Pathology Criteria" text in "reference list pathology report filter page" field on "Btris/Portal" page
    And the user selects "<Reference Name>" from "reference list drop down" search term list drop down and "<Reference Date Type>" and "<Reference Term Document>" then reenter "<New Reference Name>" on "Btris/Portal" page
    And the user enters "<Number of Days Before>" into "reference list day range text box" on "Btris/Portal" page
    And the user enters "<Number of Days After>" into "number of days after text box" on "Btris/Portal" page
    And the user enters "<Number of Values>" into "number of values text box" on "Btris/Portal" page
    And the user verify and select selects "<Labs>" from "labs drop down" drop down and provide "<Labs>" and "<User>" and "<Domain>" and "<Search Term Document>" on "Btris/Portal" page
    And the user remembers the value of "preview header" field into "Results Preview - Page" on "Btris/Portal" page
    #Verify report page.
    And the user verify if the report failed
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user must see "Pathology Results Preview - Standard" text in "pathology and procedure report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user remembers the value of "pathology rl results" field into "Loaded Pathology Report" on "Btris/Portal" page
    #And the user verify the reference list pathology report and "<Validation Record>" on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "pathology rl results" field into "Loaded Pathology Report" on "Btris/Portal" page
    And the user must see "Pathology Results Preview - Standard" text in "pathology and procedure report page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Labs                     | User_Name   | Number of Values | Number of Days Before | Reference Name        | Number of Days After | User_Name   | User                     | Domain                          | Search Term Document            | Reference Name            | Reference Date Type | Reference Term Document      | New Reference Name    |
      | T - Pathology Document 1 | btris_test2 | 15               | 290                   | New Reference List DN | 200                  | btris_test2 | BTRIS_TEST2 - TEST2 null | Pathology Consolidated Concepts | Pathology_Search_Term_List.xlsx | T - New Reference List DN | MM/DD/YYYY          | Reference_List_Template.xlsx | New Reference List DN |


  @Laboratory-4

  Scenario Outline: 1.2 Running Reports Search for Laboratory Reports Criteria, 10days.
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
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #Verify and click on Reference List Report top na.
    And the user remembers the value of "reference list top nav" field into "Report Type" on "Btris/Portal" page
    And the user clicks on "reference list top nav" element on "Btris/Portal" page
    And the user remembers the value of "reference list reports: laboratory" field into "Criteria List" on "Btris/Portal" page
    #click on the Laboratory Test.
    And the user clicks on "reference list laboratory" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "reference list laboratory report filter page" field into "Search Report" on "Btris/Portal" page
    And the user must see "Laboratory Criteria" text in "reference list laboratory report filter page" field on "Btris/Portal" page
    And the user selects "<Reference Name>" from "reference list drop down" search term list drop down and "<Reference Date Type>" and "<Reference Term Document>" then reenter "<New Reference Name>" on "Btris/Portal" page
    And the user enters "<Number of Days Before>" into "reference list day range text box" on "Btris/Portal" page
    And the user enters "<Number of Days After>" into "number of days after text box" on "Btris/Portal" page
    And the user enters "<Number of Values>" into "number of values text box" on "Btris/Portal" page
    And the user verify and select selects "<Labs>" from "labs drop down" drop down and provide "<List Name>" and "<User>" and "<Domain>" and "<Search Term Document>" on "Btris/Portal" page
    And the user remembers the value of "preview header" field into "Results Preview - Page" on "Btris/Portal" page
    And the user verify if the report failed
    And the user remembers the value of "laboratory results" field into "Loaded Laboratory Report" on "Btris/Portal" page
    #And the user verify the reference list "<Validation Record>" laboratory report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "laboratory results" field into "Loaded Laboratory Report" on "Btris/Portal" page
    And the user must see "Laboratory Results Preview - Standard" text in "laboratory report page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Labs                      | User_Name   | List Name             | Number of Days Before | Number of Days After | User_Name   | User                     | Domain          | Search Term Document        | Reference Name            | Reference Date Type | Reference Term Document      | Number of Values | New Reference Name    |
      | T - Laboratory Testing 01 | btris_test2 | Laboratory Testing 01 | 200                   | 200                  | btris_test2 | BTRIS_TEST2 - TEST2 null | Lab Observation | Search_Tearm_List_Data.xlsx | T - New Reference List DN | MM/DD/YYYY          | Reference_List_Template.xlsx | 10               | New Reference List DN |


