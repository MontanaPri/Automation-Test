@BTRIS_Practice_Test_Unstable
@MyPratice_Test
Feature: Laboratory Feature

  @PracticeTest1.1

  @Diagnosis_Procedures_Report
  Scenario Outline: 1.1 My First Practice Feature Test.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login with "<User_Name>" to the btris application
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    And the user clicks on "test accept button" element on "Test/Page" page
    And the user clicks on "test active protocols button" element on "Test/Page" page
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user remembers the value of "diagnosis and procedures" field on "Test/Page" page
    And the user clicks on "diagnosis and procedures" element on "Test/Page" page
    And the user clicks on "create new button" element on "Test/Page" page
    And the user must see "Diagnosis & Procedure Criteria" text in "btris: diagnosis and procedure filter report page" field on "Btris/Portal" page
    And the user clicks on "select subjects" element on "Test/Page" page
    And the user enters "<Subject>" into "find protocols and subjects lists box" on "Test/Page" page
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user clicks on "run button" element on "Test/Page" page
    And the user must see "Diagnosis & Procedure Results Preview - Standard" text in "test: diagnosis and procedure report page" field on "Test/Page" page
    And the user remembers the value of "test: diagnosis and procedure report table" field into "D&P Results" on "Test/Page" page
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Diagnosis & Procedure Results Preview - Standard" text in "test: diagnosis and procedure report page" field on "Test/Page" page
    And the user remembers the value of "test: diagnosis and procedure report table" field into "D&P Results" on "Test/Page" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | User_Name   |
      | BTRIS-TEST-03 | btris_test2 |
      | BTRIS-TEST-03 | btris_test4 |


  @PracticeTest2.2
  @Vital_sign_Report_and_pivot
  Scenario Outline: 1.2 My First Practice Feature Test.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login to the btris application
    #Verify the condition page to accespt it.
    And the user waits for 4 seconds
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #click on the Vital Signs Test.
    And the user waits for 3 seconds
    And the user clicks on "btris: vital signs test" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Vital Signs Criteria" text in "btris: vital signs test page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    And the user waits for 5 seconds
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 8 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify the laboratory report table.
    And the user waits for 15 seconds
    And the user must see "Subject Name" text in "vital signs test table: subject name column" field on "Btris/Portal" page
    #Verify report page.
    And the user must see "Vital Signs Results Preview - Standard" text in "vital signs test result page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user selects "<Pivot>" from "pivot drop down" drop down on "Test/Page" page
    And the user waits for 4 seconds
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.

    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | Filtered Subject | Pivot               |
      | BTRIS-TEST-04 | NIHCCTEST        | Pivot By Day & Time |
      | BTRIS-TEST-05 | NIHCCTEST        | Pivot By Day        |
