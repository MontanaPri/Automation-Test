@BTRIS_Bug_Regression
@Manage_Protocol
@Manage_Subject.01
Feature: BTRIS UI Manage Protocol Consented, Unconsented and Add New Subjects Test Report


  @AddSubjects.1

  Scenario Outline: 1.1 Adding a valid MRN to a protocol.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login with "<User_Name>" to the BTRIS with personal account
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
    And the user waits for 2 seconds
    And user refresh the browser
    And the user waits for 3 seconds
    And the user remembers the value of "manage protocol: mrn on table" field into "MRN" on "Manage/Subjects" page
    And the user must see "<Protocol>" text in "manage subject page" field on "Manage/Subjects" page
    And the user can see current value of "Consented Subjects" in "number of consented subjects" field on "Manage/Subjects" page
    And the user clicks on "add subject button" element on "Manage/Subjects" page
    And the user enters "<New MRN>" into "enter mrn text box" text area box on "Manage/Subjects" page
    And the user clicks on "submit button" element on "Manage/Subjects" page
    And the user verify if MRN "<New MRN>" has already been added and "<Existing MRN Validation Message>" is display
    #And the user must see "<New MRN Validation Message>" text in "display mrn message banner" field on "Manage/Subjects" page
    And the user remembers the value of "header notification" field into "MRN Status" on "Manage/Subjects" page
    And the user clicks on "affirm consent button" element on "Manage/Subjects" page
    And the user must see "<Added Subject Success Message>" text in "affirm consent message" field on "Manage/Subjects" page
    And the user clicks on "return to subject button" element on "Manage/Subjects" page
    And the user remembers the value of "manage protocol: mrn on table" field into "MRN" on "Manage/Subjects" page
    And the user enters "<New MRN>" into "manage subject protocol text box" on "Manage/Subjects" page
    And the user remembers the value of "manage protocol: mrn on table" field into "MRN" on "Manage/Subjects" page
    And the user verify if the "<Protocol Validation Message>" is display on the table for "<New MRN>" added
    And the user must see "<New MRN>" text in "subject table" field on "Manage/Subjects" page
    And the user enters "Todays Date" into "initial consent date" on "Manage/Subjects" page
    And the user waits for 2 seconds
    And the user clicks on "back arrow" element on "Manage/Subjects" page
    #Sign out.
    Then the user logged out of the system

    Examples:
      | Protocol      | User_Name   | New MRN | Added Subject Success Message | Existing MRN Validation Message        | Protocol Validation Message |
      | BTRIS-TEST-04 | btris_test4 | 4026792 | Success!                      | We've noticed that 1 MRN is already in | No subjects found           |
      | BTRIS-TEST-04 | ngunida     | 4018898 | Success!                      | We've noticed that 1 MRN is already in | No subjects found           |
      | BTRIS-TEST-04 | btris_test4 | 4018886 | Success!                      | We've noticed that 1 MRN is already in | No subjects found           |
      | 000007-AG     | btris_test4 | 3145918 | Success!                      | We've noticed that 1 MRN is already in | No subjects found           |


  @ManagingProtocol.2

  Scenario Outline: 1.2 Managing and existing subject in a protocol, Unconsented.
  #Login to the system.
    And the user waits for 3 seconds
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login with "<User_Name>" to the BTRIS with personal account
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
    And the user enters "<MRN>" into "subject search field" on "Manage/Subjects" page
    And the user remembers the value of "manage protocol: mrn on table" field into "MRN" on "Manage/Subjects" page
    And the user must see "<MRN>" text in "subject table" field on "Manage/Subjects" page
    And the user clicks on "subject consented switch" element on "Manage/Subjects" page
    And the user waits for 1 seconds
    And the user verify if the subject is unconsented
    And the user enters "Todays Date" into "initial consent date" on "Manage/Subjects" page
    And the user clicks on "initial consent info icon" element on "Manage/Subjects" page
    And the user remembers the value of "initial consent info pop-up" field into "Pop up Box" on "Manage/Subjects" page
    And the user must see "<Content Info>" text in "initial consent info pop-up" field on "Manage/Subjects" page
    And the user clicks on "initial consent info pop-up close button" element on "Manage/Subjects" page
    And the user clicks on "back arrow" element on "Manage/Subjects" page

    #Sign out.
    And the user logged out of the system
    Examples:
      | Protocol      | User_Name   | MRN     | Content Info          |
      | BTRIS-TEST-05 | ngunida     | 9990070 | About Initial Consent |
      | BTRIS-TEST-05 | btris_test4 | 4018874 | About Initial Consent |




  @ManagingProtocol.3

  Scenario Outline: 1.3 Managing and existing subject in a protocol, Consented.
  #Login to the system.
    And the user waits for 3 seconds
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login with "<User_Name>" to the BTRIS with personal account
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
    And the user enters "<MRN>" into "subject search field" on "Manage/Subjects" page
    And the user remembers the value of "manage protocol: mrn on table" field into "MRN" on "Manage/Subjects" page
    And the user must see "<MRN>" text in "subject table" field on "Manage/Subjects" page
    And the user clicks on "subject consented switch" element on "Manage/Subjects" page
    And the user waits for 1 seconds
    And the user verify if the subject is consented
    And the user enters "Todays Date" into "initial consent date" on "Manage/Subjects" page
    And the user clicks on "initial consent info icon" element on "Manage/Subjects" page
    And the user remembers the value of "initial consent info pop-up" field into "Pop up Box" on "Manage/Subjects" page
    And the user must see "<Content Info>" text in "initial consent info pop-up" field on "Manage/Subjects" page
    And the user clicks on "initial consent info pop-up close button" element on "Manage/Subjects" page
    And the user clicks on "back arrow" element on "Manage/Subjects" page

    #Sign out.
    And the user logged out of the system

    Examples:
      | Protocol      | User_Name   | MRN     | Content Info          |
      | BTRIS-TEST-05 | ngunida     | 9990112 | About Initial Consent |
      | BTRIS-TEST-05 | btris_test4 | 3981770 | About Initial Consent |



  @ManagingProtocol.4

  Scenario Outline: 1.4 Verifying Deleted subject from a protocol.
  #Login to the system.

    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login with "<User_Name>" to the BTRIS with personal account
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
    And the user enters "<Deleted MRN>" into "subject search field" on "Manage/Subjects" page
    And the user verify that "<Deleted MRN>" is not display


    #Sign out.
    And the user logged out of the system

    Examples:
      | Protocol      | User_Name   | Deleted MRN |
      | BTRIS-TEST-03 | ngunida     | 9990045     |
      | BTRIS-TEST-03 | btris_test4 | 4222386     |










