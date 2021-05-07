@BTRIS_Practice_Test_Unstable
@MyPratice_Test
Feature: Laboratory Feature

  @PracticeTest3.1

  Scenario Outline: 1.1 My First Practice Feature Test.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login with "<User_Name>" to the btris application
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    And the user clicks on "test accept button" element on "Test/Page" page
    And the user clicks on "test active protocols button" element on "Test/Page" page
    And the user waits for 3 seconds
    And the user clicks on "laboratory test" element on "Test/Page" page
    And the user waits for 3 seconds
    And the user clicks on "create new button" element on "Test/Page" page
    And the user must see "Laboratory Criteria" text in "laboratory filter report page" field on "Test/Page" page
    And the user clicks on "select subjects" element on "Test/Page" page
    And the user enters "<Subject>" into "find protocols and subjects lists box" on "Test/Page" page
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user clicks on "run button" element on "Test/Page" page
    And the user must see "Laboratory Results Preview - Standard" text in "laboratory results preview - standard" field on "Test/Page" page
    #And the user remembers the value of "test:Laboratory report table" field into "D&P Results" on "Test/Page" page
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Laboratory Results Preview - Standard" text in "laboratory results preview - standard" field on "Test/Page" page
   # And the user remembers the value of "test: diagnosis and procedure report table" field into "D&P Results" on "Test/Page" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | User_Name   |
      | BTRIS-TEST-03 | btris_test2 |


  @PracticeTest3.2

  Scenario Outline: 1.1 My First Practice Feature Test.(Lab with red search)
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login to the btris application
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    And the user clicks on "test accept button" element on "Test/Page" page
    And the user clicks on "test active protocols button" element on "Test/Page" page
    And the user waits for 3 seconds
    And the user clicks on "laboratory test" element on "Test/Page" page
    And the user waits for 3 seconds
    And the user clicks on "create new button" element on "Test/Page" page
    And the user must see "Laboratory Criteria" text in "laboratory filter report page" field on "Test/Page" page
    And the user clicks on "select subjects" element on "Test/Page" page
    And the user enters "<Subject>" into "find protocols and subjects lists box" on "Test/Page" page
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user clicks on "run button" element on "Test/Page" page
    And the user must see "Laboratory Results Preview - Standard" text in "laboratory results preview - standard" field on "Test/Page" page
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #And the user remembers the value of "test:Laboratory report table" field into "D&P Results" on "Test/Page" page
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Laboratory Results Preview - Standard" text in "laboratory results preview - standard" field on "Test/Page" page
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the return to main page
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user clicks on "enter report criteria link" element on "Test/Page" page

    And the user clicks on "lab : add labs button" element on "Test/Page" page
    And the user remembers the value of "add labs pop-up" field into "Add Lab Page" on "Test/Page" page

    And the user enters "<Red Search Data>" into "lab: search labs text box" on "Test/Page" page
    And the user selects "<Search Type>" from "lab: search type drop down" drop down on "Test/Page" page
    And the user clicks on "lab: search button" element on "Test/Page" page
    And the user waits for 4 seconds
    And  the user clicks on "lab: done button" element on "Test/Page" page
      #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | Filtered Subject | Red Search Data | Search Type                       |
      | BTRIS-TEST-03 | NIHCCTEST        | Labs            | Contains all of these keywords    |
      | BTRIS-TEST-03 | NIHCCTEST        | Labs            | Starts with any of these keywords |

