@BTRIS_Quick_Test
@Pathology_Test
Feature: BTRIS Pathology Test Report

  @Pathology1

  Scenario Outline: 10.1 Pathology Test Reports without ALL Test.
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
    #click on the Pathology Test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: pathology test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "btris: pathology report page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Pathology Criteria" text in "btris: pathology report page" field on "Btris/Portal" page
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
    And the user waits for 3 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    Then the user verify if the report is unable to run with message
    And the user remembers the value of "pathology result page" field into "Results Preview - Page" on "Btris/Portal" page
    And the user verify if the report failed
    #Verify the laboratory report table.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Pathology Results Preview - Standard" text in "pathology result page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user remembers the value of "pathology results" field into "Loaded Pathology Report" on "Btris/Portal" page
    #And the user verify the pathology report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user remembers the value of "pathology results" field into "Loaded Pathology Report" on "Btris/Portal" page
    And the user must see "Pathology Results Preview - Standard" text in "pathology result page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | User_Name   | Filtered Subject |
      | BTRIS-TEST-02 | btris_test2 | NIHCCTEST        |


  @Pathology2

  Scenario Outline: 10.2 Pathology Test Reports without ALL Test.
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
    #click on the Pathology Test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: pathology test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "btris: pathology report page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Pathology Criteria" text in "btris: pathology report page" field on "Btris/Portal" page
    #Uncheck the select all pathology test.
    And the user remembers the value of "pathology test list" field into "Pathology Tests" on "Btris/Portal" page
    And the user clicks on "select all pathology test" element on "Btris/Portal" page
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
    And the user waits for 3 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    Then the user verify if the report is unable to run with message
    And the user remembers the value of "pathology result page" field into "Results Preview - Page" on "Btris/Portal" page
    And the user verify if the report failed
    #Verify the laboratory report table.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Pathology Results Preview - Standard" text in "pathology result page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user remembers the value of "pathology results" field into "Loaded Pathology Report" on "Btris/Portal" page
    #And the user verify the pathology report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user remembers the value of "pathology results" field into "Loaded Pathology Report" on "Btris/Portal" page
    And the user must see "Pathology Results Preview - Standard" text in "pathology result page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | User_Name   | Filtered Subject |
      | BTRIS-TEST-02 | btris_test2 | NIHCCTEST        |


  @Pathology_SC3

  Scenario Outline: 10.3 Pathology Shopping Cart Test Reports without ALL Test.
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
    #click on the Pathology Test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: pathology test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "btris: pathology report page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Pathology Criteria" text in "btris: pathology report page" field on "Btris/Portal" page
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
    And the user waits for 3 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    Then the user verify if the report is unable to run with message
    And the user remembers the value of "pathology result page" field into "Results Preview - Page" on "Btris/Portal" page
    And the user verify if the report failed
    #Verify the laboratory report table.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Pathology Results Preview - Standard" text in "pathology result page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user remembers the value of "pathology results" field into "Loaded Pathology Report" on "Btris/Portal" page
    #And the user verify the pathology report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user remembers the value of "pathology results" field into "Loaded Pathology Report" on "Btris/Portal" page
    And the user must see "Pathology Results Preview - Standard" text in "pathology result page" field on "Btris/Portal" page
    And the return to main page
    And the user clicks on "my report selections button" element on "Btris/Portal" page
    And the user must see "My Report Selections" text in "my report selections cart" field on "Btris/Portal" page
    And the user can see current value of "Protocol Number" in "cart protocol list" field on "Btris/Portal" page
    And the user clicks on "edit/view report criteria button" element on "Btris/Portal" page
    And the user clicks on "close shopping cart icon" element on "Btris/Portal" page
    And the user remembers the value of "btris: pathology report page" field into "Criteria Page" on "Btris/Portal" page
    And the user enters "<Meds Order Start Date>" into "pathology result start date" on "Btris/Portal" page
    And the user enters "Todays Date" into "pathology result end date" on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    #And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    And the user must see "Pathology Results Preview - Standard" text in "pathology result page" field on "Btris/Portal" page
    And user refresh the browser
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user clicks on "my report selections button" element on "Btris/Portal" page
    And the user can see current value of "Protocol Number" in "cart protocol list" field on "Btris/Portal" page
    And the user clicks on "close shopping cart icon" element on "Btris/Portal" page
    And the user clicks on "my report selections button" element on "Btris/Portal" page
    And the user can see current value of "Protocol Number" in "cart protocol list" field on "Btris/Portal" page
    And the user clicks on "edit/view report subjects button" element on "Btris/Portal" page
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Subject 1>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user clicks on "run report button" element on "Btris/Portal" page
    And the user must see "Pathology Results Preview - Standard" text in "pathology result page" field on "Btris/Portal" page
    And user refresh the browser
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user clicks on "my report selections button" element on "Btris/Portal" page
    And the user can see current value of "Protocol Number" in "cart protocol list" field on "Btris/Portal" page
    And the user must see "My Report Selections" text in "my report selections cart" field on "Btris/Portal" page
    And the user clicks on "view results button" element on "Btris/Portal" page
    And the user clicks on "close shopping cart icon" element on "Btris/Portal" page
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page

    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | User_Name   | Filtered Subject | Meds Order Start Date | Subject 1     |
      | BTRIS-TEST-02 | btris_test2 | NIHCCTEST        | 5/13/2003             | BTRIS-TEST-03 |

