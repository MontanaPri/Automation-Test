@BTRIS_Quick_Smoke_Test
@Download_Protocols
Feature: BTRIS Subject Attribution (Download Protocols) Test Report

  @ManagingProtocol_Download_Protocols.1

  Scenario Outline: 1.1 Downloading Protocols .
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
    Then the user check that protocols are loaded
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
    And the user clicks on "download subjects button" element on "Btris/Portal" page
    And the user verify if the subjects were downloaded successfully
    And the user remembers the value of "manage protocol: mrn on table" field into "MRN" on "Manage/Subjects" page
    And the user must see "<Protocol>" text in "manage subject page" field on "Manage/Subjects" page
    And the user can see current value of "Consented Subjects" in "number of consented subjects" field on "Manage/Subjects" page
    And the user enters "<MRN>" into "subject search field" on "Manage/Subjects" page
    And the user remembers the value of "manage protocol: mrn on table" field into "MRN" on "Manage/Subjects" page
    And the user must see "<MRN>" text in "subject table" field on "Manage/Subjects" page
    And the user clicks on "back arrow" element on "Manage/Subjects" page

    #Sign out.
    And the user logged out of the system
    Examples:
      | Protocol  | User_Name   | MRN     |
      | 00-C-0133 | btris_test2 | 3148567 |
