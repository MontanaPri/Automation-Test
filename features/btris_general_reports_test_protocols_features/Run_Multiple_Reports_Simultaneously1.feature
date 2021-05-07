@BTRIS_Quick_Test
@Echocardiogram_Simu_Test
Feature: BTRIS Echo,EKG & IRB simultaneous Report

  @simultaneous_Report1

  Scenario Outline: 1.1 Running Echocardiogram, EKG, and IRB Inclusion Enrollment report simultaneously.
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
    #click on the Echocardiogram test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: echocardiogram test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user remembers the value of "btris: echocardiogram report page" field into "Criteria Page" on "Btris/Portal" page
    And the user enters "<Echocardiogram Tests>" into "echocardiogram tests search fields" on "Btris/Portal" page
    And the user remembers the value of "echo tests" field into "Criteria Page" on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Echocardiogram Criteria" text in "btris: echocardiogram report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user verify that searched "<Subject>" is available
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 3 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    Then the user verify if the report is unable to run with message
    And the user verify if the report failed
    #Verify assessment report results.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Echocardiogram Results Preview - Standard" text in "echocardiogram result page" field on "Btris/Portal" page
    #Click on add new report.
    And the user clicks on "add new report button" element on "Btris/Portal" page
    #click on the EKG test.
    And the user waits for 2 seconds
    And the user remembers the value of "echo report value" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: ekg test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user remembers the value of "btris: ekg report page" field into "Criteria Page" on "Btris/Portal" page
    #verify the select report page.
    And the user must see "EKG Criteria" text in "btris: ekg report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "select ekg subject top button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject 1>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject 1>" into "fine filter subject search box" on "Btris/Portal" page
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    And the user must see "EKG Results Preview - Standard" text in "ekg result page" field on "Btris/Portal" page
    And user refresh the browser
    #Verify assessment report results.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "EKG Results Preview - Standard" text in "ekg result page" field on "Btris/Portal" page
    #Click on add new report.
    And the user clicks on "add new report button" element on "Btris/Portal" page
    #Verify and click on active protocol.
    And the user waits for 2 seconds
    And the user remembers the value of "echo report value" field into "Criteria List" on "Btris/Portal" page
    #click on the IRB Inclusion Test.
    And the user clicks on "btris: irb inclusion enrollment test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "btris: irb inclusion enrollment report page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "IRB Inclusion Enrollment Criteria" text in "btris: irb inclusion enrollment report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject 2>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "irb inclusion select protocol" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "irb inclusion select protocol" element on "Btris/Portal" page
    And the user enters "<Filtered Subject 2>" into "fine filter subject search box" on "Btris/Portal" page
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    And the user must see "Cumulative Inclusion Enrollment Report" text in "irb inclusion enrollment result page" field on "Btris/Portal" page
    And user refresh the browser
    #Verify report page.
    And the user must see "Cumulative Inclusion Enrollment Report" text in "irb inclusion enrollment result page" field on "Btris/Portal" page
    #Verify searched protocol
    And the user remembers the value of "irb inclusion enrollment search protocol" field into "Subject" on "Btris/Portal" page
    And the user must see "<Subject 2>" text in "irb inclusion enrollment search protocol" field on "Btris/Portal" page
    And the user clicks the link with text "EKG"
    #Verify and validate the report display.
    And the user remembers the value of "ekg results" field into "Loaded EKG Report" on "Btris/Portal" page
    #And the user verify the ekg report on the table with prod data
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user must see "EKG Results Preview - Standard" text in "ekg result page" field on "Btris/Portal" page
    And the return to main page
    And the user clicks the link with text "Echo"
    #Verify and validate the report display.
    And the user remembers the value of "echocardiogram results" field into "Loaded Echocardiogram Report" on "Btris/Portal" page
    #And the user verify the echocardiogram report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | User_Name   | Filtered Subject | Subject 1 | Filtered Subject 1 | Subject 2     | Filtered Subject 2 | Echocardiogram Tests                                                   |
      | BTRIS-TEST-04 | btris_test2 | NIHCCTEST        | 00-C-0133 | ANDERSON           | BTRIS-TEST-01 | NIHCCTEST          | Modified Bruce Protocol Exercise Tolerance Echocardiography, Procedure |
