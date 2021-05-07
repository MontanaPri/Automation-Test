@BTRIS_Quick_Smoke_Test_Unstable
@Pivot_Counts_Lab_Test_RL
Feature: BTRIS Pivot Counts Reference List Lab Test Report

  @Lab_Pivot_Counts_RL1

  Scenario Outline: 1.1 Pivot count for Reference List Lab report.
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
    And the user selects "<Reference Name>" from "reference list drop down" drop down on "Btris/Portal" page
    And the user enters "<Number of Days Before>" into "reference list day range text box" on "Btris/Portal" page
    And the user enters "<Number of Days After>" into "number of days after text box" on "Btris/Portal" page
    And the user enters "<Number of Values>" into "number of values text box" on "Btris/Portal" page
    And the user selects "<Labs>" from "labs drop down" drop down on "Btris/Portal" page
    And the user clicks the "btris: bottom select button" button on "Btris/Portal" page
    And the user remembers the value of "laboratory and procedure report page" field into "Results Preview - Page" on "Btris/Portal" page
    #Then the user verify if the report failed
    And the user verify if the report failed
    #Verify report page.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user must see "Laboratory Results Preview - Standard" text in "laboratory and procedure report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user remembers the value of "laboratory results" field into "Loaded Laboratory Report" on "Btris/Portal" page
    Then the user verify if the are any more errors with the report
    #Verify pivot count for all reports views.
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
    And the user can see current value of "Total Subjects Cont" in "subjects count" field on "Btris/Portal" page
    And the user can see current value of "Total Records Cont" in "records count" field on "Btris/Portal" page

    #Sign out.
    And the user logged out of the system

    Examples:
      | User_Name   | Pivot 0  | Labs                      | Number of Values | Number of Days Before | Reference Name        | Number of Days After | Pivot 5                      |
      | btris_test2 | Standard | T - Laboratory Testing 01 | 15               | 209                   | T - Reference List DN | 230                  | Pivot By Day (w/o UOM Range) |


