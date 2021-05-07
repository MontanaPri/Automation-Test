@BTRIS_Quick_Test
@Laboratory_Simu_Test
Feature: BTRIS Lab, Med & Micro simultaneous Report

  @simultaneous_Report2

  Scenario Outline: 1.1 Running Laboratory, Medication Report, and Microbiology report simultaneously.
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
    #click on the Laboratory Test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "laboratory test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "btris: laboratory filter report page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Laboratory Criteria" text in "btris: laboratory filter report page" field on "Btris/Portal" page
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
    #Verify the laboratory report table.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Laboratory Results Preview - Standard" text in "laboratory and procedure report page" field on "Btris/Portal" page
    #Click on add new report.
    And the user clicks on "add new report button" element on "Btris/Portal" page
    #click on the Microbiology test.
    And the user waits for 2 seconds
    And the user remembers the value of "echo report value" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: microbiology test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user remembers the value of "btris: microbiology report page" field into "Criteria Page" on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Microbiology Criteria" text in "btris: microbiology report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject 2>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject 2>" into "fine filter subject search box" on "Btris/Portal" page
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Click on add new report.
    And the user clicks on "add new report button" element on "Btris/Portal" page
    #click on the medication report Test.
    And the user waits for 4 seconds
    And the user remembers the value of "echo report value" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: medication test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "btris: medication report page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Medication Report Criteria" text in "btris: medication report page" field on "Btris/Portal" page
    And the user enters "<Meds Order Start Date>" into "medication order start date" on "Btris/Portal" page
    And the user enters "Todays Date" into "medication order end date" on "Btris/Portal" page
    And the user enters "<Meds Admin Start Date>" into "medication admin start date" on "Btris/Portal" page
    And the user enters "Todays Date" into "medication admin end date" on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject 3>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject 3>" into "fine filter subject search box" on "Btris/Portal" page
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify the laboratory report table.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Medication Report Results Preview - Medication Orders" text in "medication report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user remembers the value of "medication results" field into "Loaded Medication Report" on "Btris/Portal" page
    #And the user verify the medication report on the table
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user must see "Medication Report Results Preview - Medication Orders" text in "medication report page" field on "Btris/Portal" page
    And the return to main page
    And the user clicks the link with text "Micro"
    #Verify assessment report results.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Microbiology Results Preview - Standard" text in "microbiology result page" field on "Btris/Portal" page
    #Verify and validate the report display.
    And the user remembers the value of "microbiology results" field into "Loaded Microbiology Report" on "Btris/Portal" page
    #And the user verify the microbiology report on the table
    And the user clicks the link with text "Lab"
    #Verify and validate the report display and click on the the image to view.
    And the user remembers the value of "laboratory results" field into "Loaded Laboratory Report" on "Btris/Portal" page
    #And the user verify the laboratory report on the table
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Laboratory Results Preview - Standard" text in "laboratory report page" field on "Btris/Portal" page
    And the return to main page

    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | User_Name   | Filtered Subject | Subject 2     | Filtered Subject 2 | Subject 3     | Filtered Subject 3 | Meds Order Start Date | Meds Admin Start Date |
      | BTRIS-TEST-03 | btris_test2 | NIHCCTEST        | BTRIS-TEST-02 | NIHCCTEST          | BTRIS-TEST-02 | NIHCCTEST          | 3/15/2007             | 3/4/2008              |

