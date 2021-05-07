@BTRIS_Quick_Prod_Test_Unstable
@BTRIS_Logo_Quick_Prod_Test
Feature: BTRIS Logo Verification Test Report

  @BTRIS_Logo_Quick_Prod_Test1.1

  Scenario Outline: 1.1 BTRIS Logo verification of extension.
  #Login to the system.
    Given the user navigates to /img/BTRIS-logo.a636a03c.png on browser
    And the user verify if the BTRIS logo linked has error message "<Btris Logo Error>" which means the link is broken
    And the user remembers the value of "brtis logo img" field into "BTRIS lOGO" on "Btris/Portal" page
    Given the user navigates to / on browser
    And the switch to new tab page
    #Login to the BTRIS system.
    And the user login with "<User_Name>" to the btris application
    #Verify the condition page to accespt it.
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page

    #Sign out.
    And the user logged out of the system

    Examples:
      | User_Name   | Btris Logo Error                                                         |
      | btris_test2 | Something went wrong.  We cannot find "app/img/BTRIS-logo.a636a03c.png". |