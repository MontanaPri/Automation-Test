@BTRIS_Quick_Test_Unstable
@Radiology_Reference_List_Saved_Reports
Feature: BTRIS Radiology Reference List Saved Reports



  @Radiology_Saved_Reports-1

  Scenario Outline: 1.1 Adding, Editing and deleting Radiology Reference List Saved Reports Criteria, 10 days.
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
    #click on the Radiology Test.
    And the user remembers the value of "reference list reports: pathology" field into "Criteria List" on "Btris/Portal" page
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
    And the user verify and select selects "<Labs>" from "labs drop down" drop down and provide "<New Lab>" and "<User>" and "<Domain>" and "<Search Term Document>" on "Btris/Portal" page
    And the user remembers the value of "preview header" field into "Results Preview - Page" on "Btris/Portal" page
    And the user verify if the report failed
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user must see "Radiology Results Preview - Standard" text in "reference list: radiology report results table" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user remembers the value of "pathology rl results" field into "Loaded Pathology Report" on "Btris/Portal" page
    And the user clicks on "save report configuration button" element on "Save/Reports" page
    And the user remembers the value of "save report pop-up title" field into "Save Report Configuration" on "Save/Reports" page
    And the user clicks on "report configuration save button" element on "Save/Reports" page
    And the user must see "Report name is required" text in "report configuration required message" field on "Save/Reports" page
    And the user enters "<Report Name>" into "save report configuration name filed" on "Save/Reports" page
    And the user enters "<Report Description>" into "save report configuration description box" text area box on "Save/Reports" page
    And the user clicks on "report configuration cancel button" element on "Save/Reports" page
    And the user clicks on "save report configuration button" element on "Save/Reports" page
    And the user remembers the value of "save report pop-up title" field into "Save Report Configuration" on "Save/Reports" page
    And the user clicks on "report configuration save button" element on "Save/Reports" page
    And the user must see "Report name is required" text in "report configuration required message" field on "Save/Reports" page
    And the user enters "<Report Name>" into "save report configuration name filed" on "Save/Reports" page
    And the user enters "<Report Description>" into "save report configuration description box" text area box on "Save/Reports" page
    And the user clicks on "report configuration save button" element on "Save/Reports" page
    And the user waits for 2 seconds
    And the user Radiology reference list saved report with name "<Report Name>" if already exist on the Saved Reports table with "<Report Description>" and verify if "<Report Validation Error Message>" which is being added already exist and delete it then add new "<Reference Name>" and enter "<Number of Days Before>" and "<Number of Days After>" and "<Number of Values>" and select "<Labs>"
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user clicks on "btris: logout drop down" element on "Btris/Portal" page
    And the user clicks on "save report on drop-down" element on "Save/Reports" page
    And the user enters "<Report Name>" into "saved reports search field" on "Save/Reports" page
    And the user remembers the value of "radiology rl saved report" field into "Saved Reports Table" on "Save/Reports" page
    And the user clicks on "edit button for saved report" element on "Save/Reports" page
    And the user waits for 2 seconds
    And the user enters "<edited Number of Days Before>" into "reference list day range text box" on "Btris/Portal" page
    And the user enters "<edited Number of Days After>" into "number of days after text box" on "Btris/Portal" page
    And the user enters "<Edited Number of Values>" into "number of values text box" on "Btris/Portal" page
    And the user clicks on "report details nav" element on "Save/Reports" page
    And the user clicks on "saved button" element on "Save/Reports" page
    And the user clicks on "btris: logout drop down" element on "Btris/Portal" page
    And the user clicks on "save report on drop-down" element on "Save/Reports" page
    And the user enters "<Report Name>" into "saved reports search field" on "Save/Reports" page
    And the user remembers the value of "radiology rl saved report" field into "Saved Reports Table" on "Save/Reports" page
    And the user clicks on "run button for saved report" element on "Save/Reports" page
    And the user clicks on "2nd run button for saved report" element on "Save/Reports" page
    And the user waits for 2 seconds
    And user refresh the browser
    And the user remembers the value of "reports results" field into "Loaded Reports Table" on "Btris/Portal" page
    And the user clicks on "btris: logout drop down" element on "Btris/Portal" page
    And the user clicks on "save report on drop-down" element on "Save/Reports" page
    And the user enters "<Report Name>" into "saved reports search field" on "Save/Reports" page
    And the user remembers the value of "radiology rl saved report" field into "Saved Reports Table" on "Save/Reports" page
    And the user clicks on "delete button for saved report" element on "Save/Reports" page
    And the user clicks on "confirm delete button for saved report" element on "Save/Reports" page

    #Sign out.
    And the user logged out of the system

    Examples:
      | Labs                        | User_Name   | Number of Values | Number of Days Before | Reference Name        | Number of Days After | Report Name             | Report Description                  | Report Validation Error Message         | edited Number of Days Before | edited Number of Days After | Edited Number of Values | User                     | Domain                                      | Search Term Document                | Reference Date Type | Reference Term Document           | New Reference Name | New Lab                 |
      | T - Radiology Test Template | btris_test4 | 10               | 210                   | T - Reference List DN | 211                  | Radiology Test Template | 1234 0 Radiology Automation Testing | There was 1 error with your submission: | 244                          | 237                         | 14                      | BTRIS_TEST2 - TEST2 null | Radiology and Imaging Procedure Observation | Radiology_New_Search_Term_List.xlsx | MM/DD/YYYY          | Radiology_New_Reference_List.xlsx | Reference List DN  | Radiology Test Template |


  @Radiology_Saved_Reports-2

  Scenario Outline: 1.2 Copy Radiology Reference List Saved Reports Criteria, 12 days.
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
    #click on the Radiology Test.
    And the user remembers the value of "reference list reports: pathology" field into "Criteria List" on "Btris/Portal" page
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
    And the user verify and select selects "<Labs>" from "labs drop down" drop down and provide "<New Lab>" and "<User>" and "<Domain>" and "<Search Term Document>" on "Btris/Portal" page
    And the user remembers the value of "preview header" field into "Results Preview - Page" on "Btris/Portal" page
    And the user verify if the report failed
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user must see "Radiology Results Preview - Standard" text in "reference list: radiology report results table" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user remembers the value of "pathology rl results" field into "Loaded Pathology Report" on "Btris/Portal" page
    And the user clicks on "save report configuration button" element on "Save/Reports" page
    And the user remembers the value of "save report pop-up title" field into "Save Report Configuration" on "Save/Reports" page
    And the user clicks on "report configuration save button" element on "Save/Reports" page
    And the user must see "Report name is required" text in "report configuration required message" field on "Save/Reports" page
    And the user enters "<Report Name>" into "save report configuration name filed" on "Save/Reports" page
    And the user enters "<Report Description>" into "save report configuration description box" text area box on "Save/Reports" page
    And the user clicks on "report configuration cancel button" element on "Save/Reports" page
    And the user clicks on "save report configuration button" element on "Save/Reports" page
    And the user remembers the value of "save report pop-up title" field into "Save Report Configuration" on "Save/Reports" page
    And the user clicks on "report configuration save button" element on "Save/Reports" page
    And the user must see "Report name is required" text in "report configuration required message" field on "Save/Reports" page
    And the user enters "<Report Name>" into "save report configuration name filed" on "Save/Reports" page
    And the user enters "<Report Description>" into "save report configuration description box" text area box on "Save/Reports" page
    And the user clicks on "report configuration save button" element on "Save/Reports" page
    And the user waits for 2 seconds
    And the user Radiology reference list saved report with name "<Report Name>" if already exist on the Saved Reports table with "<Report Description>" and verify if "<Report Validation Error Message>" which is being added already exist and delete it then add new "<Reference Name>" and enter "<Number of Days Before>" and "<Number of Days After>" and "<Number of Values>" and select "<Labs>"
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user clicks on "btris: logout drop down" element on "Btris/Portal" page
    And the user clicks on "save report on drop-down" element on "Save/Reports" page
    And the user enters "<Report Name>" into "saved reports search field" on "Save/Reports" page
    And the user remembers the value of "radiology rl saved report" field into "Saved Reports Table" on "Save/Reports" page
    And the user clicks on "copy button for saved report" element on "Save/Reports" page
    And the user clicks on "report configuration cancel button" element on "Save/Reports" page
    And the user clicks on "copy button for saved report" element on "Save/Reports" page
    And the user remembers the value of "save report configuration name filed" field into "Copied Report Name" on "Save/Reports" page
    And the user clicks on "copy report button" element on "Save/Reports" page
    And the user enters "<New Copied Report>" into "saved reports search field" on "Save/Reports" page
    And the user clicks on "run button for saved report" element on "Save/Reports" page
    And the user clicks on "2nd run button for saved report" element on "Save/Reports" page
    And the user waits for 2 seconds
    And user refresh the browser
    And the user remembers the value of "reports results" field into "Loaded Reports Table" on "Btris/Portal" page
    And the user clicks on "btris: logout drop down" element on "Btris/Portal" page
    And the user clicks on "save report on drop-down" element on "Save/Reports" page
    And the user enters "<New Copied Report>" into "saved reports search field" on "Save/Reports" page
    And the user remembers the value of "radiology rl saved report" field into "Saved Reports Table" on "Save/Reports" page
    And the user clicks on "delete button for saved report" element on "Save/Reports" page
    And the user clicks on "confirm delete button for saved report" element on "Save/Reports" page
    And the user enters "<Report Name>" into "saved reports search field" on "Save/Reports" page
    And the user remembers the value of "radiology rl saved report" field into "Saved Reports Table" on "Save/Reports" page
    And the user clicks on "delete button for saved report" element on "Save/Reports" page
    And the user clicks on "confirm delete button for saved report" element on "Save/Reports" page

    #Sign out.
    And the user logged out of the system

    Examples:
      | Labs                        | User_Name   | Number of Values | Number of Days Before | Reference Name        | Number of Days After | Report Name         | Report Description                  | Report Validation Error Message         | New Copied Report           | User                     | Domain                                      | Search Term Document                | Reference Date Type | Reference Term Document           | New Reference Name | New Lab                 |
      | T - Radiology Test Template | btris_test4 | 12               | 220                   | T - Reference List DN | 235                  | Radiology RL Report | 1234 0 Radiology Automation Testing | There was 1 error with your submission: | Copy of Radiology RL Report | BTRIS_TEST2 - TEST2 null | Radiology and Imaging Procedure Observation | Radiology_New_Search_Term_List.xlsx | MM/DD/YYYY          | Radiology_New_Reference_List.xlsx | Reference List DN  | Radiology Test Template |





