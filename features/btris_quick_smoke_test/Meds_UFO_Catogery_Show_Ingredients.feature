@BTRIS_Quick_Smoke_Test
@Medication_BMO_Show_Ingredients_Smoke_Test
Feature: BTRIS Medication UFO Show Ingredients Test Report


  @Medication_UFO_How_Ingredients_1.1

  Scenario Outline: 1.1 Test case 1, Medication UFO search by Categories with ingredients Feature Test.
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
    And the user must see "Anti-Influenza Virus Agent" text in "top record" field on "Meds/Ufo" page
    And the user hovers on "search results tc1" and clicks on "show more" element on "Meds/Ufo" page
    And the user verify if the ingredients "<Search String>" results from the category search matches the actual Ingredients result SI-TC1
    And the user clicks on "search results tc1" element on "Meds/Ufo" page
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
      | Subject   | User_Name   | Search String              | Category Result  |
      | 00-C-0078 | btris_test4 | Anti-Influenza Virus Agent | Salicylate Agent |


  @Medication_UFO_How_Ingredients_1.2

  Scenario Outline: 1.2 Test case 2, Medication UFO search by Categories with ingredients Feature Test.
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
    And the user must see "Antiviral Agent" text in "top record" field on "Meds/Ufo" page
    And the user hovers on "search results tc2" and clicks on "show more" element on "Meds/Ufo" page
    And the user verify if the ingredients "<Search String>" results from the category search matches the actual Ingredients result SI-TC2
    And the user clicks on "search results tc2" element on "Meds/Ufo" page
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
      | Subject   | User_Name   | Search String   |
      | 00-C-0078 | btris_test4 | Antiviral Agent |


  @Medication_UFO_How_Ingredients_1.3

  Scenario Outline: 1.3 Test case 3, Medication UFO search by Categories with ingredients Feature Test.
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
    And the user must see "ACE Inhibitor" text in "top record" field on "Meds/Ufo" page
    And the user hovers on "search results tc3" and clicks on "show more" element on "Meds/Ufo" page
    And the user verify if the ingredients "<Search String>" results from the category search matches the actual Ingredients result SI-TC3
    And the user clicks on "search results tc3" element on "Meds/Ufo" page
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
      | Subject   | User_Name   | Search String |
      | 00-C-0078 | btris_test4 | ACE Inhibitor |



  @Medication_UFO_How_Ingredients_1.4

  Scenario Outline: 1.4 Test case 4, Medication UFO search by Categories with ingredients Feature Test.
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
    And the user must see "Non-Steroidal Anti-Inflammatory (NSAID) Agent" text in "top record" field on "Meds/Ufo" page
    And the user hovers on "search results tc4" and clicks on "show more" element on "Meds/Ufo" page
    And the user verify if the ingredients "<Search String>" results from the category search matches the actual Ingredients result SI-TC4
    And the user clicks on "search results tc4" element on "Meds/Ufo" page
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
      | Subject   | User_Name   | Search String                                 |
      | 00-C-0078 | btris_test4 | Non-Steroidal Anti-Inflammatory Agent (NSAID) |


  @Medication_UFO_How_Ingredients_1.5

  Scenario Outline: 1.5 Test case 5, Medication UFO search by Categories with ingredients Feature Test.
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
    And the user must see "Antibacterial Agent" text in "top record" field on "Meds/Ufo" page
    And the user hovers on "search results tc5" and clicks on "show more" element on "Meds/Ufo" page
    And the user verify if the ingredients "<Search String>" results from the category search matches the actual Ingredients result SI-TC5
    And the user clicks on "search results tc5" element on "Meds/Ufo" page
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
      | Subject   | User_Name   | Search String       |
      | 00-C-0078 | btris_test4 | Antibacterial Agent |



  @Medication_UFO_How_Ingredients_1.6

  Scenario Outline: 1.6 Test case 6, Medication UFO search by Categories with ingredients Feature Test.
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
    And the user must see "Antineoplastic Vaccine" text in "top record" field on "Meds/Ufo" page
    And the user hovers on "search results tc6" and clicks on "show more" element on "Meds/Ufo" page
    And the user verify if the ingredients "<Search String>" results from the category search matches the actual Ingredients result SI-TC6
    And the user clicks on "search results tc6" element on "Meds/Ufo" page
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
      | Subject   | User_Name   | Search String          |
      | 00-C-0078 | btris_test4 | Antineoplastic Vaccine |