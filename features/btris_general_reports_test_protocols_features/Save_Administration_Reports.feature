@BTRIS_Quick_Test
@Save_Radiology_Administration_Reports
Feature: BTRIS Radiology Administration Test Report


  @Radiology_Administration_Saved_Report1

  Scenario Outline: 1.1 Radiology Administration Add, Run, Edit and Delete Saved Reports.
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
    #Verify and click on Admin Report.
    And the user remembers the value of "navigation: admin report" field into "Report Tab" on "Btris/Portal" page
    And the user clicks on "navigation: admin report" element on "Btris/Portal" page
    And the user remembers the value of "admin report tab" field into "Report Tab" on "Btris/Portal" page
    And the user clicks on "admin report tab" element on "Btris/Portal" page
    #click on the  Radiology Administration Test.
    And the user remembers the value of "admin reports" field into "Reports" on "Btris/Portal" page
    And the user clicks on "report: radiology administration" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Radiology Administration Criteria" text in "btris: radiology administrative report filter page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    Then the user verify if the report is unable to run with message
    #And the user remembers the value of "laboratory report table: subject name column" field into "Subject Name" on "Btris/Portal" page
    And the user must see "Radiology Administration Results Preview - Standard" text in "radiology administrative report page" field on "Btris/Portal" page
    And the user verify if the report failed
    And the user remembers the value of "radiology admin results" field into "Loaded Admin Report" on "Btris/Portal" page
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
    And the user waits for 2 seconds
    And the user verify admin saved report with name "<Report Name>" if already exist on the Saved Reports table with "<Report Description>" and verify if "<Report Validation Error Message>" which is being added already exist and edit it with new "<Meds Order Start Date>"
    And the user verify if the report failed
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user clicks on "btris: logout drop down" element on "Btris/Portal" page
    And the user clicks on "save report on drop-down" element on "Save/Reports" page
    And the user enters "<Report Name>" into "saved reports search field" on "Save/Reports" page
    And the user remembers the value of "radiology admin saved report" field into "Saved Reports Table" on "Save/Reports" page
    And the user clicks on "edit button for saved report" element on "Save/Reports" page
    And the user enters "<Meds Order edited Start Date>" into "radiology exam start date" on "Btris/Portal" page
    And the user enters "Todays Date" into "radiology exam end date" on "Btris/Portal" page
    And the user clicks on "report details nav" element on "Save/Reports" page
    And the user clicks on "saved button" element on "Save/Reports" page
    And the user clicks on "btris: logout drop down" element on "Btris/Portal" page
    And the user clicks on "save report on drop-down" element on "Save/Reports" page
    And the user enters "<Report Name>" into "saved reports search field" on "Save/Reports" page
    And the user remembers the value of "radiology admin saved report" field into "Saved Reports Table" on "Save/Reports" page
    And the user clicks on "run button for saved report" element on "Save/Reports" page
    And the user clicks on "run button radiology admin saved report" element on "Save/Reports" page
    And the user must see "Radiology Administration Results Preview - Standard" text in "radiology administrative report page" field on "Btris/Portal" page
    And user refresh the browser
    And the user must see "Radiology Administration Results Preview - Standard" text in "radiology administrative report page" field on "Btris/Portal" page
    And the user waits for 10 seconds
    And the user verify if the report failed
    And the user remembers the value of "radiology admin results" field into "Loaded Admin Report" on "Btris/Portal" page
    And the user clicks on "btris: logout drop down" element on "Btris/Portal" page
    And the user clicks on "save report on drop-down" element on "Save/Reports" page
    And the user enters "<Report Name>" into "saved reports search field" on "Save/Reports" page
    And the user remembers the value of "radiology admin saved report" field into "Saved Reports Table" on "Save/Reports" page
    And the user clicks on "delete button for saved report" element on "Save/Reports" page
    And the user clicks on "confirm delete button for saved report" element on "Save/Reports" page

    #Sign out.
    And the user logged out of the system

    Examples:
      | User_Name   | Report Name                  | Report Description        | Report Validation Error Message         | Meds Order Start Date | Meds Order edited Start Date |
      | btris_test4 | Radiology Adm Save Report123 | 1234 0 Automation Testing | There was 1 error with your submission: | 4/10/2017             | 4/10/2019                    |


  @Radiology_Administration_Saved_Report2

  Scenario Outline: 1.2 Radiology  Administration Copy Saved Reports.
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
    #Verify and click on Admin Report.
    And the user remembers the value of "navigation: admin report" field into "Report Tab" on "Btris/Portal" page
    And the user clicks on "navigation: admin report" element on "Btris/Portal" page
    And the user remembers the value of "admin report tab" field into "Report Tab" on "Btris/Portal" page
    And the user clicks on "admin report tab" element on "Btris/Portal" page
    #click on the  Radiology Administration Test.
    And the user remembers the value of "admin reports" field into "Reports" on "Btris/Portal" page
    And the user clicks on "report: radiology administration" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Radiology Administration Criteria" text in "btris: radiology administrative report filter page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    #And the user remembers the value of "laboratory report table: subject name column" field into "Subject Name" on "Btris/Portal" page
    And the user must see "Radiology Administration Results Preview - Standard" text in "radiology administrative report page" field on "Btris/Portal" page
    And the user verify if the report failed
    And the user remembers the value of "radiology admin results" field into "Loaded Admin Report" on "Btris/Portal" page
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
    And the user waits for 2 seconds
    And the user verify admin saved report with name "<Report Name>" if already exist on the Saved Reports table with "<Report Description>" and verify if "<Report Validation Error Message>" which is being added already exist and edit it with new "<Meds Order Start Date>"
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user clicks on "btris: logout drop down" element on "Btris/Portal" page
    And the user clicks on "save report on drop-down" element on "Save/Reports" page
    And the user enters "<Report Name>" into "saved reports search field" on "Save/Reports" page
    And the user remembers the value of "radiology admin saved report" field into "Saved Reports Table" on "Save/Reports" page
    And the user clicks on "edit button for saved report" element on "Save/Reports" page
    And the user enters "<Meds Order edited Start Date>" into "radiology exam start date" on "Btris/Portal" page
    And the user enters "Todays Date" into "radiology exam end date" on "Btris/Portal" page
    And the user clicks on "report details nav" element on "Save/Reports" page
    And the user clicks on "saved button" element on "Save/Reports" page
    And the user clicks on "btris: logout drop down" element on "Btris/Portal" page
    And the user clicks on "save report on drop-down" element on "Save/Reports" page
    And the user enters "<Report Name>" into "saved reports search field" on "Save/Reports" page
    And the user remembers the value of "radiology admin saved report" field into "Saved Reports Table" on "Save/Reports" page
    And the user clicks on "copy button for saved report" element on "Save/Reports" page
    And the user clicks on "report configuration cancel button" element on "Save/Reports" page
    And the user clicks on "copy button for saved report" element on "Save/Reports" page
    And the user remembers the value of "save report configuration name filed" field into "Copied Report Name" on "Save/Reports" page
    And the user clicks on "copy report button" element on "Save/Reports" page
    And the user enters "<New Copied Report>" into "saved reports search field" on "Save/Reports" page
    And the user clicks on "run button for saved report" element on "Save/Reports" page
    And the user clicks on "run button radiology admin saved report" element on "Save/Reports" page
    And the user must see "Radiology Administration Results Preview - Standard" text in "radiology administrative report page" field on "Btris/Portal" page
    And the user waits for 2 seconds
    And user refresh the browser
    And the user waits for 9 seconds
    And the user verify if the report failed
    And the user remembers the value of "radiology admin results" field into "Loaded Admin Report" on "Btris/Portal" page
    And the user clicks on "btris: logout drop down" element on "Btris/Portal" page
    And the user clicks on "save report on drop-down" element on "Save/Reports" page
    And the user enters "<New Copied Report>" into "saved reports search field" on "Save/Reports" page
    And the user remembers the value of "radiology admin saved report" field into "Saved Reports Table" on "Save/Reports" page
    #And the user delete added report with name "<Report Type>" on the Saved Reports table
    And the user clicks on "delete button for saved report" element on "Save/Reports" page
    And the user clicks on "confirm delete button for saved report" element on "Save/Reports" page
    And the user enters "<Report Name>" into "saved reports search field" on "Save/Reports" page
    And the user remembers the value of "radiology admin saved report" field into "Saved Reports Table" on "Save/Reports" page
    And the user clicks on "delete button for saved report" element on "Save/Reports" page
    And the user clicks on "confirm delete button for saved report" element on "Save/Reports" page

    #Sign out.
    And the user logged out of the system

    Examples:
      | User_Name   | Report Name               | Report Description        | Report Validation Error Message         | Meds Order Start Date | Meds Order edited Start Date | New Copied Report                 | Report Type              |
      | btris_test4 | Radiology Adm Save Report | 1234 0 Automation Testing | There was 1 error with your submission: | 4/10/2017             | 4/10/2019                    | Copy of Radiology Adm Save Report | Radiology Administrative |
