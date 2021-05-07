@BTRIS_Quick_Test
@Radiology_With_Image
Feature: BTRIS BTRIS Radiology Report

  @Radiology1

  Scenario Outline: 1.1 Radiology with image including demographic data.
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
    #click on the radiology test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: radiology test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user remembers the value of "btris: radiology filter report page" field into "Criteria Page" on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Radiology Criteria" text in "btris: radiology filter report page" field on "Btris/Portal" page
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
    And the user verify if the report failed
    #Verify radiology report results.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Radiology Results Preview - Standard" text in "radiology report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user must see "<Subject>" text in "search subject pn1" field on "Btris/Portal" page
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page

    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | User_Name   | Filtered Subject | Radiology Image Name |
      | BTRIS-TEST-03 | btris_test2 | NIHCCTEST        | BOWEN JEANNE DOLORES |

  @Radiology2

  Scenario Outline: 1.2 Radiology without image without demographic data.
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
    #click on the radiology test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: radiology test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user remembers the value of "btris: radiology filter report page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Radiology Criteria" text in "btris: radiology filter report page" field on "Btris/Portal" page
    #Uncheck the demographic data.
    And the user clicks on "demographic data check box" element on "Btris/Portal" page
    #Click on the select subject button.
    And the user clicks on "btris: select subject button" element on "Btris/Portal" page
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user verify that searched "<Subject>" is available
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user clicks on "run report button" element on "Btris/Portal" page
    Then the user verify if the report is unable to run with message
    And the user verify if the report failed
    #Verify radiology report results.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Radiology Results Preview - Standard" text in "radiology report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user must see "<Subject>" text in "search subject pn1" field on "Btris/Portal" page
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user must see "Radiology Results Preview - Standard" text in "radiology report page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | User_Name   | Filtered Subject | Radiology Image Name |
      | BTRIS-TEST-03 | btris_test2 | NIHCCTEST        | BOWEN JEANNE DOLORES |

  @Radiology_SC3

  Scenario Outline: 1.3 Radiology with image including demographic data Shopping Cart.
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
    #click on the radiology test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: radiology test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user remembers the value of "btris: radiology filter report page" field into "Criteria Page" on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Radiology Criteria" text in "btris: radiology filter report page" field on "Btris/Portal" page
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
    And the user verify if the report failed
    #Verify radiology report results.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Radiology Results Preview - Standard" text in "radiology report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user must see "<Subject>" text in "search subject pn1" field on "Btris/Portal" page
    And the user clicks on "my report selections button" element on "Btris/Portal" page
    And the user must see "My Report Selections" text in "my report selections cart" field on "Btris/Portal" page
    And the user can see current value of "Protocol Number" in "cart protocol list" field on "Btris/Portal" page
    And the user clicks on "edit/view report criteria button" element on "Btris/Portal" page
    And the user clicks on "close shopping cart icon" element on "Btris/Portal" page
    And the user must see "Radiology Criteria" text in "btris: radiology filter report page" field on "Btris/Portal" page
    And the user enters "<Meds Order Start Date>" into "radiology exam start date" on "Btris/Portal" page
    And the user enters "Todays Date" into "radiology exam end date" on "Btris/Portal" page
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
    And the user must see "Radiology Results Preview - Standard" text in "radiology report page" field on "Btris/Portal" page
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
    And the user must see "Radiology Results Preview - Standard" text in "radiology report page" field on "Btris/Portal" page
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
      | Subject       | User_Name   | Filtered Subject | Meds Order Start Date | Subject 1 |
      | BTRIS-TEST-03 | btris_test2 | NIHCCTEST        | 4/10/2007             | 00-C-0154 |


  @Radiology-4


  Scenario Outline: 1.4 Radiology report including custom test list template.
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
    #click on the radiology test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: radiology test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user remembers the value of "btris: radiology filter report page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Radiology Criteria" text in "btris: radiology filter report page" field on "Btris/Portal" page
    #Select demographic custom template.
    And the user clicks on "select custom radiology test link" element on "Btris/Portal" page
    And the user remembers the value of "custom list value" field into "Select Custom Template List" on "Btris/Portal" page
    And the user clicks on "custom list value" element on "Btris/Portal" page
    And the user clicks on "load selected lists button" element on "Btris/Portal" page
    #Click on the select subject button.
    And the user clicks on "btris: select subject button" element on "Btris/Portal" page
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user verify that searched "<Subject>" is available
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user clicks on "run report button" element on "Btris/Portal" page
    Then the user verify if the report is unable to run with message
    And the user verify if the report failed
    #Verify radiology report results.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Radiology Results Preview - Standard" text in "radiology report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user must see "<Subject>" text in "search subject pn1" field on "Btris/Portal" page
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user must see "Radiology Results Preview - Standard" text in "radiology report page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | User_Name   | Filtered Subject |
      | BTRIS-TEST-03 | btris_test2 | NIHCCTEST        |
