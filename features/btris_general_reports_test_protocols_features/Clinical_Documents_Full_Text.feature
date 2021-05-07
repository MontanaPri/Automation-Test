@BTRIS_Quick_Test
@Clinical_Documents_Full_Text
Feature: BTRIS Clinical Documents - Full Text Report

  @ClinicalDocumentsFull_1.1

  Scenario Outline: 9.1 Clinical Documents - Full Text Feature without red search.
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
    #click on the Clinical Documents: full tex Test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: clinical documents full tex test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user remembers the value of "btris: clinical documents full tex report page" field into "Criteria Page" on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Clinical Documents - Full Text Criteria" text in "btris: clinical documents full tex report page" field on "Btris/Portal" page
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
    And the user remembers the value of "clinical documents full tex result page" field into "Results Preview - Page" on "Btris/Portal" page
    And the user verify if the report failed
    #Verify the document report table.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user must see "Clinical Documents - Full Text Results Preview - Standard" text in "clinical documents full tex result page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | User_Name   | Filtered Subject |
      | BTRIS-TEST-04 | btris_test2 | NIHCCTEST        |


#  @ClinicalDocumentsFull_1.2
#
#  Scenario Outline: 9.1 Clinical Documents - Full Text Feature with Custom Clinical Document.
#  #Login to the system.
#    Given the user navigates to / on browser
#    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
#    #Login to the BTRIS system.
#    And the user login with "<User_Name>" to the btris application
#    #Verify the condition page to accespt it.
#    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
#    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
#    #Click on the accept button.
#    And the user clicks on "btris: accept button" element on "Btris/Portal" page
#    #Verify and click on active protocol.
#    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
#    #click on the Clinical Documents: full tex Test.
#    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
#    And the user clicks on "btris: clinical documents full tex test" element on "Btris/Portal" page
#    #Click on the create new report button.
#    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
#    And the user remembers the value of "btris: clinical documents full tex report page" field into "Criteria Page" on "Btris/Portal" page
#    #verify the select report page.
#    And the user must see "Clinical Documents - Full Text Criteria" text in "btris: clinical documents full tex report page" field on "Btris/Portal" page
#    #Clcik on the select report button.
#    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
#    #Enter and filter subject.
#    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
#    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
#    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
#    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
#    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
#    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
#    And the user waits for 4 seconds
#    #click on run report button.
#    And the user clicks on "run report button" element on "Btris/Portal" page
#    #Verify the document report table.
#    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
#    #Verify report page.
#    And the user must see "Clinical Documents - Full Text Results Preview - Standard" text in "clinical documents full tex result page" field on "Btris/Portal" page
#    #Click on the download report button.
#    And the user clicks on "download full report button" element on "Btris/Portal" page
#    #click on the open report in another tab button.
#    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
#    And the switch to new tab page
#    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
#    And the user must see "Clinical Documents - Full Text Results Preview - Standard" text in "clinical documents full tex result page" field on "Btris/Portal" page
#    And the return to main page
#    #Sign out.
#    And the user logged out of the system
#
#    Examples:
#      | Subject       | User_Name   | Filtered Subject |
#      | BTRIS-TEST-04 | btris_test2 | NIHCCTEST        |




  @ClinicalDocumentsFull_1.3

  Scenario Outline: 9.2 Clinical Documents - Full Text Feature with red search for Clinical documentsi.
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
    #click on the Clinical Documents: full tex Test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: clinical documents full tex test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user remembers the value of "btris: clinical documents full tex report page" field into "Criteria Page" on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Clinical Documents - Full Text Criteria" text in "btris: clinical documents full tex report page" field on "Btris/Portal" page
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
    And the user remembers the value of "clinical documents full tex result page" field into "Results Preview - Page" on "Btris/Portal" page
    And the user verify if the report failed
    #Verify the document report table.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify the document report table.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user must see "Clinical Documents - Full Text Results Preview - Standard" text in "clinical documents full tex result page" field on "Btris/Portal" page
    And the return to main page
    #Click on Enter Report Criteria.
    And the user clicks on "top nav: enter report criteria" element on "Btris/Portal" page
    #Click on Add Clinical Document button:
    And the user clicks on "labs: add clinical doc button" element on "Btris/Portal" page
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Red Search Data>" into "red search: keyword text box" on "Btris/Portal" page
    #Seect contains all of these keywords from the drop down.
    And the user selects "<Search Type>" from "red search: clinical doc search type drop down" drop down on "Btris/Portal" page
    #Click the search button.
    And the user clicks on "red search: clinical doc search button" element on "Btris/Portal" page
    #Verify search data.
    And the user waits for 5 seconds
    And the user can see text "Point of Care Testing Document (CC, CRIS)"
    #And the user must see "Point of Care Testing Document (CC, CRIS)" text in "red search for clinical doc" field on "Btris/Portal" page
    #Click on the done button.
    And the user clicks on "red search: clinical doc done button" element on "Btris/Portal" page
    #Click on Add Clinical Document button:
    And the user clicks on "labs: add clinical doc button" element on "Btris/Portal" page
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Red Search Data 1>" into "red search: keyword text box" on "Btris/Portal" page
    #Seect contains all of these keywords from the drop down.
    And the user selects "<Search Type 1>" from "red search: clinical doc search type drop down" drop down on "Btris/Portal" page
    #Click the search button.
    And the user clicks on "red search: clinical doc search button" element on "Btris/Portal" page
    #Verify search data.
    And the user waits for 5 seconds
    And the user can see text "Serial/Research Testing (CC, CRIS)"
    #And the user must see "Serial/Research Testing (CC, CRIS)" text in "red search: serial research" field on "Btris/Portal" page
    #Click on the done button.
    And the user clicks on "red search: clinical doc done button" element on "Btris/Portal" page
    #Click on Add Clinical Document button:
    And the user clicks on "labs: add clinical doc button" element on "Btris/Portal" page
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Red Search Data 2>" into "red search: keyword text box" on "Btris/Portal" page
    #Seect contains all of these keywords from the drop down.
    And the user selects "<Search Type 2>" from "red search: clinical doc search type drop down" drop down on "Btris/Portal" page
    And the user waits for 5 seconds
    #Click the search button.
    And the user clicks on "red search: clinical doc search button" element on "Btris/Portal" page
    #Verify search data.
    And the user waits for 5 seconds
    And the user can see text "Document Format (as indicated in CRIS)"
    #And the user must see "CRIS PDF Web Service Document (Document Image)" text in "red search: start with research" field on "Btris/Portal" page
    #Click on the done button.
    And the user clicks on "red search: clinical doc done button" element on "Btris/Portal" page
    #Click on Add Clinical Document button:
    And the user clicks on "labs: add clinical doc button" element on "Btris/Portal" page
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Red Search Data 3>" into "red search: keyword text box" on "Btris/Portal" page
    #Seect contains all of these keywords from the drop down.
    And the user selects "<Search Type 3>" from "red search: clinical doc search type drop down" drop down on "Btris/Portal" page
    #Click the search button.
    And the user clicks on "red search: clinical doc search button" element on "Btris/Portal" page
    #And the user can see text "Serial Testing or Serial/Research Testing Document"
    #Verify search data.
    And the user waits for 10 seconds
    And the user can see text "Serial Testing or Serial/Research Testing Document"
    #And the user must see "Serial Testing or Serial/Research Testing Document" text in "red search: exact phrase research" field on "Btris/Portal" page
    #Click on the done button.
    And the user clicks on "red search: clinical doc done button" element on "Btris/Portal" page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject       | User_Name   | Filtered Subject | Red Search Data | Search Type                    | Red Search Data 1                  | Search Type 1                  | Search Type 2                     | Red Search Data 2 | Search Type 3 | Red Search Data 3                                  |
      | BTRIS-TEST-04 | btris_test2 | NIHCCTEST        | Potassium Test  | Contains any of these keywords | Serial Research Testing (CC, CRIS) | Contains all of these keywords | Starts with any of these keywords | Serial (CC, CRIS) | Exact Phrase  | Serial Testing or Serial/Research Testing Document |