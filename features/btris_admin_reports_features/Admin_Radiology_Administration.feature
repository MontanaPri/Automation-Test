@BTRIS_Quick_Test
@Radiology_Administration
Feature: BTRIS Radiology Administration Test Report

  @Radiology_Administration1

  Scenario Outline: 1.1 Radiology  Administration Report Without Radiology Tests.
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
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #And the user remembers the value of "laboratory report table: subject name column" field into "Subject Name" on "Btris/Portal" page
    And the user must see "Radiology Administration Results Preview - Standard" text in "radiology administrative report page" field on "Btris/Portal" page
    And the user remembers the value of "radiology admin results" field into "Loaded Admin Report" on "Btris/Portal" page
    #And the user verify radiology admin report "<Validation Record>" on the table
    #Sign out.
    And the user logged out of the system

    Examples:
      | Validation Record | User_Name   |
      | No records found  | btris_test2 |


  @Radiology_Administration2

  Scenario Outline: 1.2 Radiology  Administration Report With Radiology Image.
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
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user remembers the value of "radiology admin results" field into "Loaded Admin Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Radiology Administration Results Preview - Standard" text in "radiology administrative report page" field on "Btris/Portal" page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | User_Name   | Filtered Subject |
      | BTRIS-TEST-00 | btris_test2 | NIHCCTEST        |


  @Radiology_Administration3

  Scenario Outline: 1.3 Radiology  Administration Report With Red Search.
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
    And the user remembers the value of "btris: radiology administrative report filter page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Radiology Administration Criteria" text in "btris: radiology administrative report filter page" field on "Btris/Portal" page
    #Clcik on the Add Radiology Test button.
    And the user clicks on "admin: add radiology report tests button" element on "Btris/Portal" page
    And the user remembers the value of "red term pop up" field into "Red Search Page" on "Btris/Portal" page
    And the user enters "Imaging by Procedure Type" into "admin: radiology search text box" on "Btris/Portal" page
    #Click the search button.
    And the user clicks on "admin: radiology search button" element on "Btris/Portal" page
    #Verify search data.
    And the user remembers the value of "imaging by procedure" field into "Red Search Data" on "Btris/Portal" page
    #And the user must see "Imaging by Procedure Type" text in "admin: radiology search red search result" field on "Btris/Portal" page
    And the user clicks on "admin: radiology red search done button" element on "Btris/Portal" page
    #Clcik on the select report button.
    And the user remembers the value of "btris: top select subject button" field into "Run Button" on "Btris/Portal" page
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Radiology Administration Results Preview - Standard" text in "radiology administrative report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user remembers the value of "radiology admin results" field into "Loaded Admin Report" on "Btris/Portal" page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | User_Name   | Filtered Subject |
      | BTRIS-TEST-00 | btris_test2 | NIHCCTEST        |