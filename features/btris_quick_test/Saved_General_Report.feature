@BTRIS_Quick_Auto_Test_Unstable
@Save_General_Reports_Auto
Feature: BTRIS Saved General Test Report


  @Demographic_Saved_Report_Auto1

  Scenario Outline: 1.1 Demographic Add, Edit, Copy, and Delete Saved Report Report.
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
    #click on the demographics Test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "demographics test report" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user verify that searched "<Subject>" is available
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 2 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    Then the user verify if the report is unable to run with message
    And the user remembers the value of "demographics report page" field into "Results Preview - Standard" on "Btris/Portal" page
    And the user verify if the report failed
    #Verify the demographic report table.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user clicks on "save report configuration button" element on "Save/Reports" page
    And the user remembers the value of "save report pop-up title" field into "Save Report Configuration" on "Save/Reports" page
    And the user clicks on "report configuration save button" element on "Save/Reports" page
    And the user must see "Report name is required" text in "report configuration required message" field on "Save/Reports" page
    And the user enters "<Report Name>" into "save report configuration name filed" on "Save/Reports" page
    And the user enters "<Report Description>" into "save report configuration description box" text area box on "Save/Reports" page
    And the user clicks on "report configuration cancel button" element on "Save/Reports" page
    And the user clicks on "save report configuration button" element on "Save/Reports" page
    And the user remembers the value of "save report pop-up title" field into "Save Report Configuration" on "Save/Reports" page
    And the user clicks on "report configuration save button" element on "Save/Reports" page
    And the user must see "Report name is required" text in "report configuration required message" field on "Save/Reports" page
    And the user enters "<Report Name>" into "save report configuration name filed" on "Save/Reports" page
    And the user enters "<Report Description>" into "save report configuration description box" text area box on "Save/Reports" page
    And the user clicks on "report configuration save button" element on "Save/Reports" page
    And the user waits for 9 seconds
    And the user verify the report configuration with name "<Report Name>" if already exist on the Saved Reports table with "<Report Description>" and enter new "<Subject>" and "<Filtered Subject>" and verify if "<Report Validation Error Message>" which is being added already exist and edit it
    And the user verify if the report failed
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user clicks on "btris: logout drop down" element on "Btris/Portal" page
    And the user clicks on "save report on drop-down" element on "Save/Reports" page
    And the user enters "<Report Name>" into "saved reports search field" on "Save/Reports" page
    And the user remembers the value of "demographic saved report" field into "Saved Reports Table" on "Save/Reports" page
    And the user clicks on "edit button for saved report" element on "Save/Reports" page
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user waits for 1 seconds
    And the user enters "<Subject 1>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user clicks on "report details nav" element on "Save/Reports" page
    And the user clicks on "saved button for edited report" element on "Save/Reports" page
    And the user clicks on "btris: logout drop down" element on "Btris/Portal" page
    And the user clicks on "save report on drop-down" element on "Save/Reports" page
    And the user enters "<Report Name>" into "saved reports search field" on "Save/Reports" page
    And the user remembers the value of "demographic saved report" field into "Saved Reports Table" on "Save/Reports" page
    And the user clicks on "copy button for saved report" element on "Save/Reports" page
    And the user clicks on "report configuration cancel button" element on "Save/Reports" page
    And the user clicks on "copy button for saved report" element on "Save/Reports" page
    And the user remembers the value of "save report configuration name filed" field into "Copied Report Name" on "Save/Reports" page
    And the user clicks on "copy report button" element on "Save/Reports" page
    And the user enters "<New Copied Report>" into "saved reports search field" on "Save/Reports" page
    And the user clicks on "run button for saved report" element on "Save/Reports" page
    And the user remembers the value of "demographics report page" field into "Demographics Results Preview" on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user verify if the report failed
    And user refresh the browser
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user must see "<Subject 1>" text in "protocol number row" field on "Save/Reports" page
    And the user clicks on "btris: logout drop down" element on "Btris/Portal" page
    And the user clicks on "save report on drop-down" element on "Save/Reports" page
    And the user enters "<Report Name>" into "saved reports search field" on "Save/Reports" page
    And the user remembers the value of "demographic saved report" field into "Saved Reports Table" on "Save/Reports" page
    And the user clicks on "delete button for saved report" element on "Save/Reports" page
    And the user clicks on "confirm delete button for saved report" element on "Save/Reports" page
    And the user remembers the value of "demographic saved report" field into "Saved Reports Table" on "Save/Reports" page
    And the user delete added report with name "<Report Type>" on the Saved Reports table

    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | Subject 1     | User_Name   | Filtered Subject | Report Name                | Report Description        | Report Validation Error Message         | New Copied Report                  | Report Type  |
      | BTRIS-TEST-03 | BTRIS-TEST-05 | btris_test4 | NIHCCTEST        | Demographic Test Report123 | 1234 0 Automation Testing | There was 1 error with your submission: | Copy of Demographic Test Report123 | Demographics |

