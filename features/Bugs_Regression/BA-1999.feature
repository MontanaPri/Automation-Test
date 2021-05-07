@BTRIS_Bug_Regression_Unstable
@BA-1999
Feature: BUG Lab Data not accurate

  @BA-1999.1

  Scenario Outline: 1.1 Lab Data not returning if alt_event_name_concept has bad codes.
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
    #Select demographic custom template.
    And the user clicks on "select custom radiology test link" element on "Btris/Portal" page
    And the user remembers the value of "custom list value for lab" field into "PKLR_0146 Custom Template List" on "Btris/Portal" page
    And the user clicks on "custom list value for lab" element on "Btris/Portal" page
    And the user clicks on "load selected lists button" element on "Btris/Portal" page
    And the user waits for 2 seconds
    #Click on the select subject button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user clicks on "run report button" element on "Btris/Portal" page
    Then the user verify if the report is unable to run with message
    #Verify report page.
    And the user must see "Laboratory Results Preview - Standard" text in "laboratory and procedure report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user remembers the value of "laboratory results" field into "Loaded Laboratory Report" on "Btris/Portal" page
    And the user must see "<Expected Count>" text in "result record count" field on "Btris/Portal" page
    #And the user verify that the total record is "<Expected Count>" for the lab report
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "laboratory results" field into "Loaded Laboratory Report" on "Btris/Portal" page
    And the user must see "Laboratory Results Preview - Standard" text in "laboratory report page" field on "Btris/Portal" page
    And the user must see "<Expected Count>" text in "result record count" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject   | User_Name   | Expected Count |
      | 18-H-0146 | btris_test2 | 61,102         |

    