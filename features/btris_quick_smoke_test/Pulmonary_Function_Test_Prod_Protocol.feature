@BTRIS_Quick_Smoke_Test
@Pulmonary_Function_Smoke_Test
Feature: BTRIS Pulmonary Function Test Report

  @PulmonaryFT_Smoke_Test1

  Scenario Outline: 1.1 Pulmonary Function Test Lab Report without PFT Tests with non-test protocols.
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
    #click on the pulmonary report Test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: pulmonary test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user remembers the value of "btris: pulmonary report page" field into "Page Attribute" on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Pulmonary Function Test Lab Report Criteria" text in "btris: pulmonary report page" field on "Btris/Portal" page
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
    And the user remembers the value of "pulmonary result report page" field into "Results Preview - Page" on "Btris/Portal" page
    #Then the user verify if the report failed
    #Verify the laboratory report table.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Pulmonary Function Test Lab Report Results Preview - Standard" text in "pulmonary result report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user remembers the value of "pulmonary function results" field into "Loaded Pulmonary Function Report" on "Btris/Portal" page
    Then the user verify if the are any more errors with the report
    And the user verify if the report failed
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "pulmonary function results" field into "Loaded Pulmonary Function Report" on "Btris/Portal" page
    And the user must see "Pulmonary Function Test Lab Report Results Preview - Standard" text in "pulmonary result report page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject   | User_Name   |
      | 00-C-0074 | btris_test2 |



  @PulmonaryFT_Smoke_Test2

  Scenario Outline: 1.2 Running Pulmonary Function Report with PFT Tests.
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
    #click on the pulmonary report Test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: pulmonary test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Pulmonary Function Test Lab Report Criteria" text in "btris: pulmonary report page" field on "Btris/Portal" page
    #Click on add PFT Tests and verify the data
    And the user clicks on "pulmonary: add pft test button" element on "Btris/Portal" page
    And the user must see "Pulmonary Function Test (PFT)" text in "pft tests found" field on "Btris/Portal" page
    And the user remembers the value of "pft tests found" field into "Pulmonary Function Tests Results Found" on "Btris/Portal" page
    And the user verify if the PFT tests data are returned
    And the user remembers the value of "pft tests" field into "PFT Tests List" on "Btris/Portal" page
    And the user can see text "Pulmonary Function Test (PFT) Panel and Panel Component"
    And the user clicks on "pulmonary: add pft done button" element on "Btris/Portal" page
    #Sign out.
    And the user logged out of the system

    Examples:
      | User_Name   |
      | btris_test2 |

