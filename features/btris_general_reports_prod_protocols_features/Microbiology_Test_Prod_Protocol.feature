@BTRIS_Quick_Prod_Test
@Microbiology_Test_Prod_Data
Feature: BTRIS Microbiology Prod Data

  @MicrobiologyProd_Data1

  Scenario Outline: 1.1 Microbiology Report testing using non-test protocols.
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
    #click on the Microbiology test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: microbiology test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user remembers the value of "btris: microbiology report page" field into "Criteria Page" on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Microbiology Criteria" text in "btris: microbiology report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user verify that searched "<Subject>" is available
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 4 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify assessment report results.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user remembers the value of "microbiology results" field into "Loaded Microbiology Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Microbiology Results Preview - Standard" text in "microbiology result page" field on "Btris/Portal" page
    #Verify and validate the report display.
    And the user remembers the value of "microbiology results" field into "Loaded Microbiology Report" on "Btris/Portal" page
    #And the user verify the microbiology report on the table
    #Sign out.
    And the user logged out of the system


    Examples:
      | Subject    | User_Name   | Filtered Subject |
      | 00-CH-0136 | btris_test2 | BENASSI          |

  @MicrobiologyProd_Data2

  Scenario Outline: 1.2 Microbiology with Blinded Results Report testing using non-test protocols.
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
    #click on the Microbiology test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: microbiology test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user remembers the value of "btris: microbiology report page" field into "Criteria Page" on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Microbiology Criteria" text in "btris: microbiology report page" field on "Btris/Portal" page
    And the user selects "<Blinded Results>" from "blinded results drop down" drop down on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: bottom select button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user verify that searched "<Subject>" is available
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 4 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify assessment report results.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user remembers the value of "microbiology results" field into "Loaded Microbiology Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Microbiology Results Preview - Standard" text in "microbiology result page" field on "Btris/Portal" page
    #Verify and validate the report display.
    And the user remembers the value of "microbiology results" field into "Loaded Microbiology Report" on "Btris/Portal" page
    #And the user verify the microbiology report on the table
    #Sign out.
    And the user logged out of the system


    Examples:
      | Subject   | User_Name   | Filtered Subject | Blinded Results |
      | 00-C-0154 | btris_test2 | BENASSI          | Hide            |