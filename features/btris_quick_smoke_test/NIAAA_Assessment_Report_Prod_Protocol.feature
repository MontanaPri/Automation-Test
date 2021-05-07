@BTRIS_Quick_Smoke_Test
@NIAAA_Assessment_Smoke_Test
Feature: BTRIS NIAAA Assessment Test Report

  @NIAAA_Smoke_Test1

  Scenario Outline: 1.1 NIAAA Assessment Report testing with non-test protocol.
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
    #click on the assessment test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: assessment report test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user enters "<Assessments>" into "niaa assessment input field" on "Btris/Portal" page
    And the user waits for 2 seconds
    #verify the select assessment on report page.
    And the user must see "NIAAA Assessment Report Criteria" text in "btris: assessment filter report page" field on "Btris/Portal" page
    And the user remembers the value of "niaa assessment value selects" field into "Assessments List" on "Btris/Portal" page
    And the user clicks on "niaa assessment value" element on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user verify that searched "<Subject>" is available
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user waits for 2 seconds
    #click on run report button.
    And the user clicks the "run report button" button on "Btris/Portal" page
    Then the user verify if the report is unable to run with message
    And the user remembers the value of "assessment report page" field into "Results Preview - Page" on "Btris/Portal" page
    #Then the user verify if the report failed
    And the user verify if the report failed
    #Verify assessment report results.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "NIAAA Assessment Report Results Preview - Standard" text in "assessment report page" field on "Btris/Portal" page
    #Verify and validate the report display.
    And the user remembers the value of "niaaa assessment results" field into "Loaded NIAAA Assessment Report" on "Btris/Portal" page
    Then the user verify if the are any more errors with the report
    #Sign out.
    Then the user logged out of the system

    Examples:
      | Subject    | User_Name   |  Assessments                               |
      | 13-AA-0040 | btris_test4 |  Addiction Severity Index (NIAAA, ASM_ASI) |
