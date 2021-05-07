@BTRIS_Practice_Test_Unstable
@MyPratice_Test
Feature: EKG test report

  @PracticeTest4.1
  Scenario Outline: 1.1 My First Practice Feature Test.(EKG without observations)
    #log into system
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Log into btirs system 
  #And  the user clicks the "login-to-btris__buttons" button on "Btris/Portal" page
    #And the user enters "<username >" into "<string>" text area box on "<string>" page
    And the user login to the btris application
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    And the user clicks the "test accept button" button on "Test/Page" page
    And the user clicks on "test active protocols button" element on "Test/Page" page
    And the user waits for 3 seconds
    And the user clicks on "ekg test" element on "Test/Page" page
    And the user clicks the "create new button" button on "Test/Page" page
    And the user must see "EKG Criteria" text in "ekg criteria" field on "Test/Page" page
    And the user clicks the "ekg select subjects top button" button on "Test/Page" page
    And the user enters "<Subject>" into "find protocols and subjects lists box" on "Test/Page" page
    And the user waits for 3 seconds
    And the user focus and clicks on "protocol check box" element on "Test/Page" page
    And the user enters "<Filtered Subject>" into "find filter subject box" on "Test/Page" page
    And the user clicks the "run button" button on "Test/Page" page
    And the user waits for 5 seconds
    And the user must see "EKG Results Preview - Standard" text in "ekg result" field on "Test/Page" page
    And the user clicks the "download full results" button on "Test/Page" page
    And the user clicks the "open in new window" button on "Test/Page" page
    And the switch to new tab page
    And the user must see "EKG Results Preview - Standard" text in "ekg result" field on "Test/Page" page
    And the return to main page
    And the user logged out of the system


    Examples:
      | Subject       | Filtered Subject |
      | BTRIS-TEST-03 | NIHCCTEST         |


  @PracticeTest4.2
  Scenario Outline: 1.2 My First Practice Feature Test.(EKG with observations)

#log into system
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Log into btirs system
  #And  the user clicks the "login-to-btris__buttons" button on "Btris/Portal" page
    #And the user enters "<username >" into "<string>" text area box on "<string>" page
    And the user login to the btris application
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    And the user clicks the "test accept button" button on "Test/Page" page
    And the user clicks on "test active protocols button" element on "Test/Page" page
    And the user waits for 3 seconds
    And the user clicks on "ekg test" element on "Test/Page" page
    And the user clicks the "create new button" button on "Test/Page" page
    And the user must see "EKG Criteria" text in "ekg criteria" field on "Test/Page" page
    And the user remembers the value of "EKG Observations" text box into "observations" on "Test/Page" page
    And the user clicks on "Observations select all" element on "Test/Page" page
    And the user clicks the "ekg select subjects top button" button on "Test/Page" page
    And the user enters "<Subject>" into "find protocols and subjects lists box" on "Test/Page" page
    And the user waits for 3 seconds
    And the user focus and clicks on "protocol check box" element on "Test/Page" page
    And the user enters "<Filtered Subject>" into "find filter subject box" on "Test/Page" page
    And the user clicks the "run button" button on "Test/Page" page
    And the user waits for 5 seconds
    And the user must see "EKG Results Preview - Standard" text in "ekg result" field on "Test/Page" page
    And the user clicks the "download full results" button on "Test/Page" page
    And the user clicks the "open in new window" button on "Test/Page" page
    And the switch to new tab page
    And the user must see "EKG Results Preview - Standard" text in "ekg result" field on "Test/Page" page
    And the return to main page
    And the user logged out of the system


    Examples:
      | Subject       | Filtered Subject |
      | BTRIS-TEST-03 | NIHCCTEST         |
