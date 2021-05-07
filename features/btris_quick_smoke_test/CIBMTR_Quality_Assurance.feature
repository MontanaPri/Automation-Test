@BTRIS_Quick_Smoke_Test
@Quality_Assurance_Smoke_Test
Feature: BTRIS CIBMTR Quality Assurance Test Report

  @Quality_Assurance_Smoke_Test1.1

  Scenario Outline: 1.1 Quality Assurance Report.
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
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "primary nav quality assurance" element on "Quality/Assurance" page
    And the user remembers the value of "quality assurance page header" field into "Quality Assurance Page" on "Quality/Assurance" page
    And the user verify if protocols exist
    And the user download qa data with "<Protocol>" on the qa protocol table
    And the user verify the principal investigator "<Investigator Name>" investigated "<Protocol>" for Quality Assurance
    And the user verify the principal investigator "<Investigator Name 1>" investigated "<Protocol 1>" for Quality Assurance
    And the user verify the principal investigator "<Investigator Name 2>" investigated "<Protocol 2>" for Quality Assurance
    And the user verify the principal investigator "<Investigator Name 2>" investigated "<Protocol 3>" for Quality Assurance


    #Sign out.
    And the user logged out of the system

    Examples:
      | User_Name   | Protocol  | Investigator Name   | Investigator Name 1   | Protocol 1 | Investigator Name 2 | Protocol 2 | Protocol 3 |
      | btris_test2 | 13-C-0132 | HICKSTEIN, Dennis D | KANAKRY, Jennifer Ann | 18-C-0135  | KANG, Elizabeth M   | 19-I-0080  | 16-I-0032  |