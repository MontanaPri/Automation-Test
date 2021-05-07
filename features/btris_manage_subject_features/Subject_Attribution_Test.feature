@BTRIS_Quick_Test
@Manage_Protocol
@Manage_Subject.02
Feature: BTRIS Subject Attribution Test Report

  @ManagingProtocol.1

  Scenario Outline: 1.1 Verify and validate Consented protocols (A).
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
    #Verify and click on Manage Protocol.
    And the user clicks on "top navigation: manage subject" element on "Manage/Subjects" page
    And the user remembers the value of "manage protocol: consented subject count" field into "Number OF Subjects" on "Manage/Subjects" page
    And the user remembers the value of "manage protocol: protocol" field into "Protocol Number" on "Manage/Subjects" page
    And the user enters "<Protocol>" into "search protocol text box" on "Manage/Subjects" page
    And the user remembers the value of "manage protocol: consented subject count" field into "Number OF Subjects" on "Manage/Subjects" page
    And the user remembers the value of "manage protocol: protocol" field into "Protocol Number" on "Manage/Subjects" page
    And the user remembers the value of "number of subjects" field into "Consented Subjects" on "Manage/Subjects" page
    #Verify search result for the searched protocol.
    And the user must see "<Protocol>" text in "searched protocol table" field on "Manage/Subjects" page
    And the user clicks on "searched subject" element on "Manage/Subjects" page
    And the user remembers the value of "manage protocol: mrn on table" field into "MRN" on "Manage/Subjects" page
    And the user must see "<Protocol>" text in "manage subject page" field on "Manage/Subjects" page
    And the user can see current value of "Consented Subjects" in "number of consented subjects" field on "Manage/Subjects" page


    #Sign out.
    And the user logged out of the system
    Examples:
      | Protocol      | User_Name   |
      | BTRIS-TEST-03 | btris_test2 |
      | 00-CH-0136    | btris_test2 |
      | 00-C-0133     | btris_test2 |
      | BTRIS-TEST-01 | btris_test2 |
      | BTRIS-TEST-05 | btris_test2 |


  @AddSubjects1.2

  Scenario Outline: 1.2 Adding an Invalid subject to an existing protocol using MRN (A).
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
    #Verify and click on Manage Protocol.
    And the user clicks on "top navigation: manage subject" element on "Manage/Subjects" page
    And the user remembers the value of "manage protocol: consented subject count" field into "Number OF Subjects" on "Manage/Subjects" page
    And the user remembers the value of "manage protocol: protocol" field into "Protocol Number" on "Manage/Subjects" page
    And the user enters "<Protocol>" into "search protocol text box" on "Manage/Subjects" page
    And the user remembers the value of "manage protocol: protocol" field into "Protocol Number" on "Manage/Subjects" page
    And the user remembers the value of "number of subjects" field into "Consented Subjects" on "Manage/Subjects" page
    #Verify search result for the searched protocol.
    And the user must see "<Protocol>" text in "searched protocol table" field on "Manage/Subjects" page
    And the user clicks on "searched subject" element on "Manage/Subjects" page
    And the user remembers the value of "manage protocol: mrn on table" field into "MRN" on "Manage/Subjects" page
    And the user must see "<Protocol>" text in "manage subject page" field on "Manage/Subjects" page
    And the user can see current value of "Consented Subjects" in "number of consented subjects" field on "Manage/Subjects" page
    And the user clicks on "add subject button" element on "Manage/Subjects" page
    And the user enters "<Invalid MRN Number>" into "enter mrn text box" text area box on "Manage/Subjects" page
    And the user clicks on "submit button" element on "Manage/Subjects" page
    And the user remembers the value of "display mrn message header" field into "Add MRN" on "Manage/Subjects" page
    And the user must see "<MRN Validation Message 1>" text in "display mrn message header" field on "Manage/Subjects" page
    And the user enters "<New MRN Number>" into "enter mrn text box" text area box on "Manage/Subjects" page
    And the user clicks on "submit button" element on "Manage/Subjects" page
    And the user remembers the value of "display mrn message header" field into "Add MRN 1" on "Manage/Subjects" page
    And the user must see "<MRN Validation Message 2>" text in "display mrn message header" field on "Manage/Subjects" page
    And the user clicks on "back arrow" element on "Manage/Subjects" page

    #Sign out.
    And the user logged out of the system
    Examples:
      | Protocol      | User_Name   | New MRN Number      | MRN Validation Message 1             | Invalid MRN Number | MRN Validation Message 2               |
      | BTRIS-TEST-05 | btris_test2 | 656554,987675,98987 | We've noticed that 1 MRN is invalid. | 67654342           | We've noticed that 3 MRNs are invalid. |


  @AddSubjects1.3

  Scenario Outline: 1.3 Adding an MRN that already exist to a protocol (A).
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
    #Verify and click on Manage Protocol.
    And the user clicks on "top navigation: manage subject" element on "Manage/Subjects" page
    And the user remembers the value of "manage protocol: consented subject count" field into "Number OF Subjects" on "Manage/Subjects" page
    And the user remembers the value of "manage protocol: protocol" field into "Protocol Number" on "Manage/Subjects" page
    And the user enters "<Protocol>" into "search protocol text box" on "Manage/Subjects" page
    And the user remembers the value of "manage protocol: protocol" field into "Protocol Number" on "Manage/Subjects" page
    And the user remembers the value of "number of subjects" field into "Consented Subjects" on "Manage/Subjects" page
    #Verify search result for the searched protocol.
    And the user must see "<Protocol>" text in "searched protocol table" field on "Manage/Subjects" page
    And the user clicks on "searched subject" element on "Manage/Subjects" page
    And the user remembers the value of "manage protocol: mrn on table" field into "MRN" on "Manage/Subjects" page
    And the user must see "<Protocol>" text in "manage subject page" field on "Manage/Subjects" page
    And the user can see current value of "Consented Subjects" in "number of consented subjects" field on "Manage/Subjects" page
    And the user clicks on "add subject button" element on "Manage/Subjects" page
    And the user enters "<MRN>" into "enter mrn text box" text area box on "Manage/Subjects" page
    And the user clicks on "submit button" element on "Manage/Subjects" page
    And the user remembers the value of "display mrn message header" field into "MRN Status" on "Manage/Subjects" page
    And the user verify if MRN "<MRN>" has not been added and "<Existing MRN Validation Message 1>" is display
    And the user must see "<Existing MRN Validation Message>" text in "display mrn message header" field on "Manage/Subjects" page
    And the user must see "<MRN>" text in "invalid mrn display" field on "Manage/Subjects" page
    And the user clicks on "back arrow" element on "Manage/Subjects" page

    #Sign out.
    And the user logged out of the system
    Examples:
      | Protocol      | User_Name   | MRN     | Existing MRN Validation Message                       |
      | BTRIS-TEST-00 | btris_test2 | 6033404 | We've noticed that 1 MRN is already in BTRIS-TEST-00. |

