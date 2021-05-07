@BTRIS_Quick_Smoke_Test
@Resources_Menu_Smoke_Test
Feature: BTRIS Resources Links Test Report

  @Resource_Tabl_Smoke_Test.1

  Scenario Outline: 1.1 Verify and validate Training page under Resources.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    And the user click on the navigation bar on the home page if in mobile mode
    And the user clicks on "training link" element on "Resource" page
    And the user remembers the value of "resource on header" field into "Resource" on "Resource" page
    And the user must see "<Resource Page>" text in "training page" field on "Resource" page
    And the user must see "<Page>" text in "resource on header" field on "Resource" page
    And the user must see "<Header>" text in "training page header" field on "Resource" page
    And the user must see "<Topic>" text in "training page topic header" field on "Resource" page
    And the user clicks on "btris home" element on "Resource" page
    #Login to the BTRIS system.
    And the user login with "<User_Name>" to the btris application
    And verify that "<User_Name>" account load properly
    #Verify the condition page to accespt it.
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.o
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    And the user click on the navigation bar on the home page if in mobile mode
    And the user clicks on "training link" element on "Resource" page
    And the user remembers the value of "resource on header" field into "Resource" on "Resource" page
    And the user must see "<Page>" text in "resource on header" field on "Resource" page
    And the user must see "<Header>" text in "training page header" field on "Resource" page
    And the user must see "<Topic>" text in "training page topic header" field on "Resource" page
    And the user clicks on "btris home" element on "Resource" page


    Examples:
      | Resource Page | User_Name   | Page     | Topic                  | Header                                             |
      | TRAINING      | btris_test2 | Resource | Group Classes Schedule | Training, user guides, and other helpful materials |


  @Resource_Tabl_Smoke_Test.2

  Scenario Outline: 1.2 Verify and validate References page under Resources.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    And the user click on the navigation bar on the home page if in mobile mode
    And the user clicks on "references link" element on "Resource" page
    And the user remembers the value of "references page" field into "References" on "Resource" page
    And the user must see "<Page Tittle>" text in "references page" field on "Resource" page
    And the user must see "<Header>" text in "training page header" field on "Resource" page
    And the user clicks on "btris home" element on "Resource" page
    #Login to the BTRIS system.
    And the user login with "<User_Name>" to the btris application
    And verify that "<User_Name>" account load properly
    #Verify the condition page to accespt it.
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    And the user click on the navigation bar on the home page if in mobile mode
    And the user clicks on "references link" element on "Resource" page
    And the user remembers the value of "references page" field into "References" on "Resource" page
    And the user must see "<Page Tittle>" text in "references page" field on "Resource" page
    And the user must see "<Header>" text in "training page header" field on "Resource" page
    And the user clicks on "btris home" element on "Resource" page

    Examples:
      | Page Tittle | User_Name   | Header                                             |
      | REFERENCES  | btris_test2 | Training, user guides, and other helpful materials |


  @Resource_Tabl_Smoke_Test.3

  Scenario Outline: 1.3 Verify and validate User Guides page under Resources.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    And the user click on the navigation bar on the home page if in mobile mode
    And the user clicks on "user guides link" element on "Resource" page
    And the user remembers the value of "user guides page" field into "References" on "Resource" page
    And the user must see "<Page Tittle>" text in "user guides page" field on "Resource" page
    And the user must see "<Header>" text in "training page header" field on "Resource" page
    And the user clicks on "btris home" element on "Resource" page
    #Login to the BTRIS system.
    And the user login with "<User_Name>" to the btris application
    And verify that "<User_Name>" account load properly
    #Verify the condition page to accespt it.
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    And the user click on the navigation bar on the home page if in mobile mode
    And the user clicks on "user guides link" element on "Resource" page
    And the user remembers the value of "user guides page" field into "References" on "Resource" page
    And the user must see "<Page Tittle>" text in "user guides page" field on "Resource" page
    And the user must see "<Header>" text in "training page header" field on "Resource" page
    And the user clicks on "btris home" element on "Resource" page

    Examples:
      | Page Tittle | User_Name   | Header                                             |
      | USER GUIDES | btris_test2 | Training, user guides, and other helpful materials |


  @Resource_Tabl_Smoke_Test.4

  Scenario Outline: 1.4 Verify and validate Tutorials page under Resources.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    And the user click on the navigation bar on the home page if in mobile mode
    And the user clicks on "tutorials link" element on "Resource" page
    And the user remembers the value of "tutorials page" field into "Tutorials" on "Resource" page
    And the user must see "<Page Tittle>" text in "tutorials page" field on "Resource" page
    And the user must see "<Header>" text in "training page header" field on "Resource" page
    And the user clicks on "btris home" element on "Resource" page
    #Login to the BTRIS system.
    And the user login with "<User_Name>" to the btris application
    And verify that "<User_Name>" account load properly
    #Verify the condition page to accespt it.
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    And the user click on the navigation bar on the home page if in mobile mode
    And the user clicks on "tutorials link" element on "Resource" page
    And the user remembers the value of "tutorials page" field into "Tutorials" on "Resource" page
    And the user must see "<Page Tittle>" text in "tutorials page" field on "Resource" page
    And the user must see "<Header>" text in "training page header" field on "Resource" page
    And the user clicks on "btris home" element on "Resource" page


    Examples:
      | Page Tittle | User_Name   | Header                                             |
      | TUTORIALS   | btris_test2 | Training, user guides, and other helpful materials |
