@BTRIS_Quick_Smoke_Test
@EKG_Test_Report_Smoke_Test
Feature: BTRIS EKG Test Report

  @EKG_Test_Smoke_TestSC1

  Scenario Outline: 12.1 EKG Report testing without Any Observations.
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
    And the user remembers the value of "btris: ekg report page" field into "Page Attribute" on "Btris/Portal" page
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
    #Then the user verify if the report failed
    And the user verify if the report failed
    #Verify assessment report results.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "EKG Results Preview - Standard" text in "ekg result page" field on "Btris/Portal" page
    #Verify and validate the report display.
    And the user remembers the value of "ekg results" field into "Loaded EKG Report" on "Btris/Portal" page
    Then the user verify if the are any more errors with the report
#    And the user clicks on "ekg peg link2" element on "Btris/Portal" page
#    And the user must see "EKG Results Preview - Standard" text in "ekg result page" field on "Btris/Portal" page
#    And the user clicks on "ekg link to pdf" element on "Btris/Portal" page
#    And the user waits for 9 seconds
#    And the switch to new tab page
#    And the user verify the ekg pdf
#    And the return to main page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "ekg results" field into "Loaded EKG Report" on "Btris/Portal" page
    And the user must see "EKG Results Preview - Standard" text in "ekg result page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | User_Name   |
      | BTRIS-TEST-00 | btris_test1 |


  @EKG_Quick_TC2

  Scenario Outline: 12.2 EKG Report testing with Observations Using Test_Account3.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login with "<User_Name>" to the btris application     And verify that "<User_Name>" account load properly
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
    #click on the select all check box.
    And the user enters "<EKG Observations 1>" into "observation text box" on "Btris/Portal" page
    And the user remembers the value of "observation value 1" field into "Criteria Page" on "Btris/Portal" page
    And the user clicks on "observation value 1" element on "Btris/Portal" page
    And the user enters "<EKG Observations 2>" into "observation text box" on "Btris/Portal" page
    And the user remembers the value of "observation value 2" field into "Criteria Page" on "Btris/Portal" page
    And the user clicks on "observation value 2" element on "Btris/Portal" page
    And the user enters "<EKG Observations 3>" into "observation text box" on "Btris/Portal" page
    And the user remembers the value of "observation value 3" field into "Criteria Page" on "Btris/Portal" page
    And the user clicks on "observation value 3" element on "Btris/Portal" page
    And the user enters "<EKG Observations 4>" into "observation text box" on "Btris/Portal" page
    And the user remembers the value of "observation value 4" field into "Criteria Page" on "Btris/Portal" page
    And the user clicks on "observation value 4" element on "Btris/Portal" page
    And the user enters "<EKG Observations 5>" into "observation text box" on "Btris/Portal" page
    And the user remembers the value of "observation value 5" field into "Criteria Page" on "Btris/Portal" page
    And the user clicks on "observation value 5" element on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "select ekg subject bottom button" element on "Btris/Portal" page
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
    And the user remembers the value of "ekg result page" field into "Results Preview - Page" on "Btris/Portal" page
    And the user verify if the report failed
    #Verify assessment report results.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "EKG Results Preview - Standard" text in "ekg result page" field on "Btris/Portal" page
    #Verify and validate the report display.
    And the user remembers the value of "ekg results" field into "Loaded EKG Report" on "Btris/Portal" page
    #And the user verify the ekg report on the table
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "EKG Results Preview - Standard" text in "ekg result page" field on "Btris/Portal" page
    And the user remembers the value of "ekg results" field into "Loaded EKG Report" on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | User_Name   | Filtered Subject | EKG Observations 1                                                                 | EKG Observations 2                       | EKG Observations 3                     | EKG Observations 4                                 | EKG Observations 5                   |
      | BTRIS-TEST-04 | btris_test3 | NIHCCTEST        | EKG Parameter Measurement (CPT Code 93000.5, No Name Provided by Source) (CC, EKG) | Electrocardiogram (EKG, ECG) Observation | Electrocardiogram Impression (CC, EKG) | Electrocardiogram Interpreting Physician (CC, EKG) | Electrocardiogram Location (CC, EKG) |

