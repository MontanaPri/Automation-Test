@BTRIS_Quick_Auto_Test_Unstable
@Manage_Protocol_Auto
Feature: BTRIS Subject Attribution Test Report


  @AddSubjects_Auto.1

  Scenario Outline: 1.1 Adding a valid MRN to a protocol.
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
    And the user enters "<New MRN>" into "enter mrn text box" text area box on "Manage/Subjects" page
    And the user clicks on "submit button" element on "Manage/Subjects" page
    And the user verify if MRN "<New MRN>" has already been added and "<Existing MRN Validation Message>" is display
    And the user must see "<New MRN Validation Message>" text in "display mrn message banner" field on "Manage/Subjects" page
    And the user remembers the value of "header notification" field into "MRN Status" on "Manage/Subjects" page
    And the user clicks on "affirm consent button" element on "Manage/Subjects" page
    And the user must see "<Added Subject Success Message>" text in "affirm consent message" field on "Manage/Subjects" page
    And the user clicks on "return to subject button" element on "Manage/Subjects" page
    And the user remembers the value of "manage protocol: mrn on table" field into "MRN" on "Manage/Subjects" page
    And the user enters "<New MRN>" into "manage subject protocol text box" on "Manage/Subjects" page
    And the user remembers the value of "manage protocol: mrn on table" field into "MRN" on "Manage/Subjects" page
    And the user verify if the "<Protocol Validation Message>" is display on the table for "<New MRN>" added
    And the user must see "<New MRN>" text in "subject table" field on "Manage/Subjects" page
    And the user clicks on "back arrow" element on "Manage/Subjects" page

    #Sign out.
    And the user logged out of the system
    Examples:
      | Protocol      | User_Name   | New MRN Validation Message                                              | New MRN | Added Subject Success Message | Existing MRN Validation Message        | Protocol Validation Message |
      | BTRIS-TEST-04 | btris_test2 | The following 1 records are ready to be added to protocol BTRIS-TEST-04 | 4026792 | Success!                      | We've noticed that 1 MRN is already in | No subjects found           |
