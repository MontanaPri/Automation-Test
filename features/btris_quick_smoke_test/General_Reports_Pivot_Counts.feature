@BTRIS_Quick_Smoke_Test
@Pivot_Counts_Test_QST
Feature: BTRIS Pivot Counts General Test Report

  @EKG_Pivot_Counts_QST1

  Scenario Outline: 12.1 EKG Report testing the pivot counts for subjects and records with none-test protocol.
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
    #click on the EKG test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: ekg test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user remembers the value of "btris: ekg report page" field into "Criteria Page" on "Btris/Portal" page
    #verify the select report page.
    And the user must see "EKG Criteria" text in "btris: ekg report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "select ekg subject top button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user verify that searched "<Subject>" is available
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #click on run report button.
    And the user clicks the "run report button" button on "Btris/Portal" page
    Then the user verify if the report is unable to run with message
    And the user remembers the value of "ekg result page" field into "Results Preview - Page" on "Btris/Portal" page
    Then the user verify if the report failed
    #Verify assessment report results.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "EKG Results Preview - Standard" text in "ekg result page" field on "Btris/Portal" page
    #Verify pivot count for all reports views.
    And the user remembers the value of "subjects count" field into "Total Subjects Cont" on "Btris/Portal" page
    And the user remembers the value of "records count" field into "Total Records Cont" on "Btris/Portal" page
    And the user selects "<Pivot 1>" from "report view drop_down" drop down on "Btris/Portal" page
    And user refresh the browser
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user can see current value of "Total Subjects Cont" in "subjects count" field on "Btris/Portal" page
    And the user can see current value of "Total Records Cont" in "records count" field on "Btris/Portal" page
    And the user selects "<Pivot 0>" from "report view drop_down" drop down on "Btris/Portal" page
    And user refresh the browser
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user remembers the value of "subjects count" field into "Total Subjects Cont" on "Btris/Portal" page
    And the user remembers the value of "records count" field into "Total Records Cont" on "Btris/Portal" page
    And the user selects "<Pivot 2>" from "report view drop_down" drop down on "Btris/Portal" page
    And user refresh the browser
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user can see current value of "Total Subjects Cont" in "subjects count" field on "Btris/Portal" page
    And the user can see current value of "Total Records Cont" in "records count" field on "Btris/Portal" page
    And the user selects "<Pivot 0>" from "report view drop_down" drop down on "Btris/Portal" page
    And user refresh the browser
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user remembers the value of "subjects count" field into "Total Subjects Cont" on "Btris/Portal" page
    And the user remembers the value of "records count" field into "Total Records Cont" on "Btris/Portal" page
    And the user selects "<Pivot 3>" from "report view drop_down" drop down on "Btris/Portal" page
    And user refresh the browser
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user can see current value of "Total Subjects Cont" in "subjects count" field on "Btris/Portal" page
    And the user can see current value of "Total Records Cont" in "records count" field on "Btris/Portal" page
    And the user selects "<Pivot 0>" from "report view drop_down" drop down on "Btris/Portal" page
    And user refresh the browser
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user remembers the value of "subjects count" field into "Total Subjects Cont" on "Btris/Portal" page
    And the user remembers the value of "records count" field into "Total Records Cont" on "Btris/Portal" page
    And user refresh the browser
    And the user selects "<Pivot 4>" from "report view drop_down" drop down on "Btris/Portal" page
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user can see current value of "Total Subjects Cont" in "subjects count" field on "Btris/Portal" page
    And the user can see current value of "Total Records Cont" in "records count" field on "Btris/Portal" page
    And the user selects "<Pivot 0>" from "report view drop_down" drop down on "Btris/Portal" page

    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject   | User_Name   | Filtered Subject | Pivot 1                  | Pivot 2                           | Pivot 0  | Pivot 3      | Pivot 4             |
      | 00-C-0154 | btris_test4 | ACEVEDO          | Pivot By Day & Order Set | Pivot By Day & Order Set Detail 1 | Standard | Pivot By Day | Pivot By Day & Time |

  @Lab_Pivot_Counts_QST2


  Scenario Outline: 1.2 Laboratory Test Reports, testing the pivot counts for subjects and records with Test Protocol.
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
    #click on the Laboratory Test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "laboratory test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "btris: laboratory filter report page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Laboratory Criteria" text in "btris: laboratory filter report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user verify that searched "<Subject>" is available
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    Then the user verify if the report is unable to run with message
    And the user remembers the value of "laboratory and procedure report page" field into "Results Preview - Page" on "Btris/Portal" page
    And the user waits for 18 seconds
    #Then the user verify if the report failed
    #Verify the laboratory report table.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    Then the user verify if the are any more errors with the report
    #Verify report page.
    And the user must see "Laboratory Results Preview - Standard" text in "laboratory and procedure report page" field on "Btris/Portal" page
    #Verify pivot count for all reports views.
    And the user remembers the value of "subjects count" field into "Total Subjects Cont" on "Btris/Portal" page
    And the user remembers the value of "records count" field into "Total Records Cont" on "Btris/Portal" page
    And the user selects "<Pivot 1>" from "report view drop_down" drop down on "Btris/Portal" page
    And user refresh the browser
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user can see current value of "Total Subjects Cont" in "subjects count" field on "Btris/Portal" page
    And the user can see current value of "Total Records Cont" in "records count" field on "Btris/Portal" page
    And the user selects "<Pivot 0>" from "report view drop_down" drop down on "Btris/Portal" page
    And user refresh the browser
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user remembers the value of "subjects count" field into "Total Subjects Cont" on "Btris/Portal" page
    And the user remembers the value of "records count" field into "Total Records Cont" on "Btris/Portal" page
    And the user selects "<Pivot 2>" from "report view drop_down" drop down on "Btris/Portal" page
    And user refresh the browser
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user can see current value of "Total Subjects Cont" in "subjects count" field on "Btris/Portal" page
    And the user can see current value of "Total Records Cont" in "records count" field on "Btris/Portal" page
    And the user selects "<Pivot 0>" from "report view drop_down" drop down on "Btris/Portal" page
    And user refresh the browser
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user remembers the value of "subjects count" field into "Total Subjects Cont" on "Btris/Portal" page
    And the user remembers the value of "records count" field into "Total Records Cont" on "Btris/Portal" page
    And the user selects "<Pivot 3>" from "report view drop_down" drop down on "Btris/Portal" page
    And user refresh the browser
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user can see current value of "Total Subjects Cont" in "subjects count" field on "Btris/Portal" page
    And the user can see current value of "Total Records Cont" in "records count" field on "Btris/Portal" page
    And the user selects "<Pivot 0>" from "report view drop_down" drop down on "Btris/Portal" page
    And user refresh the browser
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user remembers the value of "subjects count" field into "Total Subjects Cont" on "Btris/Portal" page
    And the user remembers the value of "records count" field into "Total Records Cont" on "Btris/Portal" page
    And the user selects "<Pivot 4>" from "report view drop_down" drop down on "Btris/Portal" page
    And user refresh the browser
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user can see current value of "Total Subjects Cont" in "subjects count" field on "Btris/Portal" page
    And the user can see current value of "Total Records Cont" in "records count" field on "Btris/Portal" page
    And the user selects "<Pivot 0>" from "report view drop_down" drop down on "Btris/Portal" page
    And user refresh the browser
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user remembers the value of "subjects count" field into "Total Subjects Cont" on "Btris/Portal" page
    And the user remembers the value of "records count" field into "Total Records Cont" on "Btris/Portal" page
    And the user selects "<Pivot 5>" from "report view drop_down" drop down on "Btris/Portal" page
    And user refresh the browser
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user can see current value of "Total Subjects Cont" in "subjects count" field on "Btris/Portal" page
    And the user can see current value of "Total Records Cont" in "records count" field on "Btris/Portal" page
    And the user selects "<Pivot 0>" from "report view drop_down" drop down on "Btris/Portal" page
    And user refresh the browser
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user remembers the value of "subjects count" field into "Total Subjects Cont" on "Btris/Portal" page
    And the user remembers the value of "records count" field into "Total Records Cont" on "Btris/Portal" page
    And the user selects "<Pivot 6>" from "report view drop_down" drop down on "Btris/Portal" page
    And user refresh the browser
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user can see current value of "Total Subjects Cont" in "subjects count" field on "Btris/Portal" page
    And the user can see current value of "Total Records Cont" in "records count" field on "Btris/Portal" page
    And the user selects "<Pivot 0>" from "report view drop_down" drop down on "Btris/Portal" page
    And user refresh the browser
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user can see current value of "Total Subjects Cont" in "subjects count" field on "Btris/Portal" page
    And the user can see current value of "Total Records Cont" in "records count" field on "Btris/Portal" page

    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | User_Name   | Pivot 1                  | Pivot 2                           | Pivot 0  | Pivot 3      | Pivot 4             | Pivot 5                             | Pivot 6                           |
      | BTRIS-TEST-03 | btris_test2 | Pivot By Day & Order Set | Pivot By Day & Order Set Detail 1 | Standard | Pivot By Day | Pivot By Day & Time | Pivot By Day & Time (w/o UOM Range) | Pivot By Day & Order Set Detail 2 |
