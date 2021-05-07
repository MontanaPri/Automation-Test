@BTRIS_Quick_Smoke_Test
@Test_Pagination_Smoke_Test
Feature: BTRIS Pagination Test Report

  @Pagination_Smoke_Test1

  Scenario Outline: 1.1 Testing Pagination.
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
    #click on the Clinical Documents: full tex Test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: clinical documents full tex test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user remembers the value of "btris: clinical documents full tex report page" field into "Criteria Page" on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Clinical Documents - Full Text Criteria" text in "btris: clinical documents full tex report page" field on "Btris/Portal" page
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
    And the user clicks the "run report button" button on "Btris/Portal" page
    Then the user verify if the report is unable to run with message
    And the user remembers the value of "clinical documents full tex result page" field into "Results Preview - Page" on "Btris/Portal" page
    And the user waits for 25 seconds
    #Then the user verify if the report failed
    And the user verify if the report failed
    #Verify the demographic report table.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Clinical Documents - Full Text Results Preview - Standard" text in "clinical documents full tex result page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    Then the user verify if the are any more errors with the report
    #And the user verify the pagination on the report table
    #And the user test the pagination of the report
    And the user verify if the report failed
    And the user click to open the pagination of the report
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject   | User_Name   |
      | 00-C-0069 | btris_test4 |
