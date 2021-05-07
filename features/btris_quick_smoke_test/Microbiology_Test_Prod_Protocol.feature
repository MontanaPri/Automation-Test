@BTRIS_Quick_Smoke_Test
@Microbiology_Test_Smoke_Test
Feature: BTRIS Microbiology Test Report

  @Microbiology_Smoke_Test1

  Scenario Outline: 1.1 Microbiology Report testing using non-test protocols.
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
    #click on the Microbiology test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: microbiology test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user remembers the value of "btris: microbiology report page" field into "Page Attribute" on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Microbiology Criteria" text in "btris: microbiology report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks the "run report top button" button on "Btris/Portal" page
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
    And the user remembers the value of "microbiology result page" field into "Results Preview - Page" on "Btris/Portal" page
    #Then the user verify if the report failed
    And the user verify if the report failed
    #Verify assessment report results.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Microbiology Results Preview - Standard" text in "microbiology result page" field on "Btris/Portal" page
    #Verify and validate the report display.
    And the user remembers the value of "microbiology results" field into "Loaded Microbiology Report" on "Btris/Portal" page
    Then the user verify if the are any more errors with the report
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject    | User_Name   |
      | 00-CH-0136 | btris_test2 |
