@BTRIS_Quick_Smoke_Test
@Medication_Report_Smoke_Test
Feature: BTRIS Medication Test Report

  @Medication_Smoke_TestR1

  Scenario Outline: 1.1 Medication Report (Medication Orders) Feature Test.
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
    #click on the medication report Test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: medication test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "btris: medication report page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Medication Report Criteria" text in "btris: medication report page" field on "Btris/Portal" page
    #Select date range.
    And the user enters "<Meds Order Start Date>" into "medication order start date" on "Btris/Portal" page
    And the user enters "Todays Date" into "medication order end date" on "Btris/Portal" page
    And the user enters "<Meds Admin Start Date>" into "medication admin start date" on "Btris/Portal" page
    And the user enters "Todays Date" into "medication admin end date" on "Btris/Portal" page
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
    And the user remembers the value of "medication report page" field into "Results Preview - Page" on "Btris/Portal" page
    #Then the user verify if the report failed
    And the user verify if the report failed
    #Verify the laboratory report table.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify that Top Therapeutic Category,Therapeutic Category and Non Formulary Info has been added to the report.
#    And the user remembers the value of "medication report: top therapeutic category" field into "Medication Report Result Table" on "Btris/Portal" page
#    And the user must see "Top Therapeutic Category" text in "medication report: top therapeutic category" field on "Btris/Portal" page
#    And the user remembers the value of "medication report: top therapeutic category data" field into "Medication Report Result Table" on "Btris/Portal" page
#    And the user remembers the value of "medication report: therapeutic category" field into "Medication Report Result Table" on "Btris/Portal" page
#    And the user must see "Therapeutic Category" text in "medication report: therapeutic category" field on "Btris/Portal" page
#    And the user remembers the value of "medication report: therapeutic category data" field into "Medication Report Result Table" on "Btris/Portal" page
#    And the user remembers the value of "medication report: non formulary info" field into "Medication Report Result Table" on "Btris/Portal" page
#    And the user must see "Non Formulary Info" text in "medication report: non formulary info" field on "Btris/Portal" page
#    And the user remembers the value of "medication report: non formulary info data" field into "Medication Report Result Table" on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user remembers the value of "medication results" field into "Loaded Medication Report" on "Btris/Portal" page
    Then the user verify if the are any more errors with the report
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "medication results" field into "Loaded Medication Report" on "Btris/Portal" page
    And the user must see "Medication Report Results Preview - Medication Orders" text in "medication report page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system
    Examples:
      | Subject   | User_Name   |  Meds Order Start Date | Meds Admin Start Date |
      | 00-C-0078 | btris_test2 |  3/15/2007             | 3/4/2008              |


  @Medication_Smoke_TestR2

  Scenario Outline: 1.2 Medication Report with loaded custom medication list Feature Test.
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
    #click on the medication report Test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: medication test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "btris: medication report page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Medication Report Criteria" text in "btris: medication report page" field on "Btris/Portal" page
    #Select date range.
    And the user enters "<Meds Order Start Date>" into "medication order start date" on "Btris/Portal" page
    And the user enters "Todays Date" into "medication order end date" on "Btris/Portal" page
    And the user enters "<Meds Admin Start Date>" into "medication admin start date" on "Btris/Portal" page
    And the user enters "Todays Date" into "medication admin end date" on "Btris/Portal" page
    #load custom list
    And the user clicks on "load custom list link" element on "Btris/Portal" page
    And the user verify is list with name "<Search Term data>" on domain "<Domain>" uploaded with template name "<Search Term Document>" by user "<User>" exist
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
    And the user remembers the value of "medication report page" field into "Results Preview - Page" on "Btris/Portal" page
    #Then the user verify if the report failed
    And the user verify if the report failed
    #Verify the laboratory report table.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify that Top Therapeutic Category,Therapeutic Category and Non Formulary Info has been added to the report.
#    And the user remembers the value of "medication report: top therapeutic category" field into "Medication Report Result Table" on "Btris/Portal" page
#    And the user must see "Top Therapeutic Category" text in "medication report: top therapeutic category" field on "Btris/Portal" page
#    And the user remembers the value of "medication report: top therapeutic category data" field into "Medication Report Result Table" on "Btris/Portal" page
#    And the user remembers the value of "medication report: therapeutic category" field into "Medication Report Result Table" on "Btris/Portal" page
#    And the user must see "Therapeutic Category" text in "medication report: therapeutic category" field on "Btris/Portal" page
#    And the user remembers the value of "medication report: therapeutic category data" field into "Medication Report Result Table" on "Btris/Portal" page
#    And the user must see "Non Formulary Info" text in "medication report: non formulary info" field on "Btris/Portal" page
#    And the user remembers the value of "medication report: non formulary info data" field into "Medication Report Result Table" on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user remembers the value of "medication results" field into "Loaded Medication Report" on "Btris/Portal" page
    Then the user verify if the are any more errors with the report
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "medication results" field into "Loaded Medication Report" on "Btris/Portal" page
    And the user must see "Medication Report Results Preview - Medication Orders" text in "medication report page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system
    Examples:
      | Subject   | User_Name   |  Meds Order Start Date | Meds Admin Start Date | Search Term data       | User                     | Domain      | Search Term Document          |
      | 00-C-0078 | btris_test2 |  3/15/2007             | 3/4/2008              | Medication Template 01 | BTRIS_TEST2 - TEST2 null | Medications | Medication_List_Template.xlsx |