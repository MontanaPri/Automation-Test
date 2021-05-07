@BTRIS_Quick_Smoke_Test
@Medication_BMO_Categories_Search_Smoke_Test
Feature: BTRIS Medication UFO search by Categories Test Report

  @Medication_UFO_2.1

  Scenario Outline: 2.1 Test case 1-Medication UFO search by Categories with single result Feature Test.
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
    #click on the medication report Test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: medication test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "btris: medication report page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Medication Report Criteria" text in "btris: medication report page" field on "Btris/Portal" page
    And the user clicks on "add medication button" element on "Meds/Ufo" page
    And the user must see "Add Medications" text in "med ufo search pop-up" field on "Meds/Ufo" page
    And the user enters "<Search String>" into "string search box" on "Meds/Ufo" page
    And the user clicks on "search categories button" element on "Meds/Ufo" page
    And the user waits for 1 seconds
    Then the user verify if the search category "<Search String>" matches the Actual Results
    And the user clicks on "add med ufo done button" element on "Meds/Ufo" page
    #Clcik on the Run report button.
    And the user clicks the "run report top button" button on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user verify that searched "<Subject>" is available
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #click on run report button.
    And the user clicks the "run report button" button on "Btris/Portal" page
    Then the user verify if the report is unable to run with message
    And the user remembers the value of "medication report page" field into "Results Preview - Page" on "Btris/Portal" page
    #Then the user verify if the report failed
    And the user verify if the report failed
    #Verify the laboratory report table.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user remembers the value of "medication results" field into "Loaded Medication Report" on "Btris/Portal" page
    Then the user verify if the are any more errors with the report
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "medication results" field into "Loaded Medication Report" on "Btris/Portal" page
    And the user must see "Medication Report Results Preview - Medication Orders" text in "medication report page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject   | User_Name   | Search String   |
      | 00-C-0078 | btris_test4 | aminoglycosides |


  @Medication_UFO_2.2

  Scenario Outline: 2.2 Test case 1-Medication UFO search by Categories with single result Feature Test.
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
    #click on the medication report Test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: medication test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "btris: medication report page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Medication Report Criteria" text in "btris: medication report page" field on "Btris/Portal" page
    And the user clicks on "add medication button" element on "Meds/Ufo" page
    And the user must see "Add Medications" text in "med ufo search pop-up" field on "Meds/Ufo" page
    And the user enters "<Search String>" into "string search box" on "Meds/Ufo" page
    And the user clicks on "search categories button" element on "Meds/Ufo" page
    And the user waits for 1 seconds
    Then the user verify if the search category results "<Search String>" matches the Actual Results
    And the user clicks on "expand fist result tree" element on "Meds/Ufo" page
    Then the user verify if the search category result children "<Search String>" matches the Actual Results
    And the user type test progress
    And the user clicks on "expand fist result tree" element on "Meds/Ufo" page
    And the user waits for 2 seconds
    And the user clicks on "#1 cat result" element on "Meds/Ufo" page
    And the user waits for 2 seconds
    #And the user must see "Antibacterial Agent" text in "fist result selected chip" field on "Meds/Ufo" page
    And the user clicks on "add med ufo done button" element on "Meds/Ufo" page
    #Clcik on the Run report button.
    And the user clicks the "run report top button" button on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user verify that searched "<Subject>" is available
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #click on run report button.
    And the user clicks the "run report button" button on "Btris/Portal" page
    Then the user verify if the report is unable to run with message
    And the user remembers the value of "medication report page" field into "Results Preview - Page" on "Btris/Portal" page
    #Then the user verify if the report failed
    And the user verify if the report failed
    #Verify the laboratory report table.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user remembers the value of "medication results" field into "Loaded Medication Report" on "Btris/Portal" page
    Then the user verify if the are any more errors with the report
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "medication results" field into "Loaded Medication Report" on "Btris/Portal" page
    And the user must see "Medication Report Results Preview - Medication Orders" text in "medication report page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject   | User_Name   | Search String |
      | 00-C-0078 | btris_test4 | antibacterial |


  @Medication_UFO_2.3

  Scenario Outline: 2.3 Test case 1-Medication UFO search by Categories with NO result Feature Test.
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
    #click on the medication report Test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: medication test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "btris: medication report page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Medication Report Criteria" text in "btris: medication report page" field on "Btris/Portal" page
    And the user clicks on "add medication button" element on "Meds/Ufo" page
    And the user must see "Add Medications" text in "med ufo search pop-up" field on "Meds/Ufo" page
    And the user enters "<Search String>" into "string search box" on "Meds/Ufo" page
    And the user clicks on "search categories button" element on "Meds/Ufo" page
    And the user waits for 1 seconds
    And the user must see ""Otibacterials" does not match any Categories in BTRIS." text in "error message" field on "Meds/Ufo" page
    And the user clicks on "add med ufo done button" element on "Meds/Ufo" page

    #Sign out.
    And the user logged out of the system

    Examples:
      | User_Name   | Search String  |
      | btris_test4 | Otibacterials |


  @Medication_UFO_2.4

  Scenario Outline: 2.4 Test case 1-Medication UFO search by Categories abbreviation Feature Test.
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
    #click on the medication report Test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user clicks on "btris: medication test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "btris: medication report page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Medication Report Criteria" text in "btris: medication report page" field on "Btris/Portal" page
    And the user clicks on "add medication button" element on "Meds/Ufo" page
    And the user must see "Add Medications" text in "med ufo search pop-up" field on "Meds/Ufo" page
    And the user enters "<Search String>" into "string search box" on "Meds/Ufo" page
    And the user clicks on "search categories button" element on "Meds/Ufo" page
    And the user waits for 1 seconds
    Then the user verify if the search category with abbreviation "<Search String>" matches the Actual Results
    And the user clicks on "add med ufo done button" element on "Meds/Ufo" page
    #Clcik on the Run report button.
    And the user clicks the "run report top button" button on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user verify that searched "<Subject>" is available
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #click on run report button.
    And the user clicks the "run report button" button on "Btris/Portal" page
    Then the user verify if the report is unable to run with message
    And the user remembers the value of "medication report page" field into "Results Preview - Page" on "Btris/Portal" page
    #Then the user verify if the report failed
    And the user verify if the report failed
    #Verify the laboratory report table.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user remembers the value of "medication results" field into "Loaded Medication Report" on "Btris/Portal" page
    Then the user verify if the are any more errors with the report
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "medication results" field into "Loaded Medication Report" on "Btris/Portal" page
    And the user must see "Medication Report Results Preview - Medication Orders" text in "medication report page" field on "Btris/Portal" page
    And the return to main page

    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject   | User_Name   | Search String |
      | 00-C-0078 | btris_test4 | TPN           |


  @Medication_UFO_2.5

  Scenario Outline: 2.5 Test case 1-Medication UFO search by Categories and Show More Ingredients Feature Test.
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
    #click on the medication report Test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user clicks on "btris: medication test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "btris: medication report page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Medication Report Criteria" text in "btris: medication report page" field on "Btris/Portal" page
    And the user clicks on "add medication button" element on "Meds/Ufo" page
    And the user must see "Add Medications" text in "med ufo search pop-up" field on "Meds/Ufo" page
    And the user enters "<Search String>" into "string search box" on "Meds/Ufo" page
    And the user clicks on "search categories button" element on "Meds/Ufo" page
    And the user waits for 1 seconds
    Then the user verify if the search category with showing more ingredients "<Search String>" matches the Actual Results
    And the user hovers on "top record" and clicks on "show more" element on "Meds/Ufo" page
    And the user verify if the ingredients "<Search String>" results from the category search matches the actual Ingredients result
    And the user waits for 2 seconds
    And the user clicks on "top results" element on "Meds/Ufo" page
    And the user waits for 2 seconds
    And the user clicks on "add med ufo done button" element on "Meds/Ufo" page
    #Clcik on the Run report button.
    And the user clicks the "run report top button" button on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user verify that searched "<Subject>" is available
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #click on run report button.
    And the user clicks the "run report button" button on "Btris/Portal" page
    Then the user verify if the report is unable to run with message
    And the user remembers the value of "medication report page" field into "Results Preview - Page" on "Btris/Portal" page
    #Then the user verify if the report failed
    And the user verify if the report failed
    #Verify the laboratory report table.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user remembers the value of "medication results" field into "Loaded Medication Report" on "Btris/Portal" page
    Then the user verify if the are any more errors with the report
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "medication results" field into "Loaded Medication Report" on "Btris/Portal" page
    And the user must see "Medication Report Results Preview - Medication Orders" text in "medication report page" field on "Btris/Portal" page
    And the return to main page

    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject   | User_Name   | Search String | Category Result  |
      | 00-C-0078 | btris_test4 | Salicylate    | Salicylate Agent |


