@BTRIS_Quick_Auto_Test
@ReferenceList_Radiology_Auto
Feature: BTRIS Reference List Test Report


  @Vital_Signs_Auto-1

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
    And the user selects "<Reference Name>" from "reference list drop down" drop down on "Btris/Portal" page
    And the user enters "<Number of Days Before>" into "reference list day range text box" on "Btris/Portal" page
    And the user enters "<Number of Days After>" into "number of days after text box" on "Btris/Portal" page
    And the user enters "<Number of Values>" into "number of values text box" on "Btris/Portal" page
    And the user selects "<Labs>" from "labs drop down" drop down on "Btris/Portal" page
    And the user clicks on "btris: bottom select button" element on "Btris/Portal" page
    And the user remembers the value of "reference list: vital signs report results table" field into "Results Preview - Standard" on "Btris/Portal" page
    And the user verify if the report failed
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
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
      | Labs                  | User_Name   | Number of Values | Number of Days Before | Reference Name    | Number of Days After | Validation Record |
      | Vital Signs Template1 | btris_test2 | 5                | 230                   | Reference List DN | 230                  | No records found  |

