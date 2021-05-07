@BTRIS_Quick_Test_Unstable
@Custom_List_Template
@ReferenceList_Vital_Signs_Test
Feature: BTRIS Vital Signs Reference List Report

  @Vital_Signs1

  Scenario Outline: 1.1 Adding Search Term List Document for Vital Signs and Reference List Documents.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login with "<User_Name>" to the btris application
    #Verify the condition page to accespt it.
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    And the user remembers the value of "reference list top nav" field into "Report Type" on "Btris/Portal" page
    #Verify and click on Reference List Report top na.
    And the user clicks on "reference list top nav" element on "Btris/Portal" page
    And the user remembers the value of "reference list reports: laboratory" field into "Criteria List" on "Btris/Portal" page
    #click on the Vital Sign Test.
    And the user clicks on "reference list vital sign" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user remembers the value of "reference list vital signs report filter page" field into "Criteria Page" on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Vital Signs Criteria" text in "reference list vital signs report filter page" field on "Btris/Portal" page
    #Clcik on the user drop down.
    And the user clicks on "custom user drop down" element on "Btris/Portal" page
    #Clcik on custom list.
    And the user clicks on "custom list" element on "Btris/Portal" page
    And the user clicks on "left nav: search term list" element on "Btris/Portal" page
    #Filter and remove search term list added by the test.
    And the user enters "<Search Term data>" into "custom list search term box" on "Btris/Portal" page
    And the user verify if existing "<Search Term data>" exist and remove it
    And the user clicks on "custom search term list upload button" element on "Btris/Portal" page
    And the user remembers the value of "upload search term list page title" field into "Page Title" on "Btris/Portal" page
    And the user remembers the value of "overwrite existing list" field into "Page Text" on "Btris/Portal" page
    And the user enters "<User>" into "custom search term list: user field" on "Btris/Portal" page
    And the user remembers the value of "custom search term list: user" field into "User Name" on "Btris/Portal" page
    And the user clicks on "custom search term list: user" element on "Btris/Portal" page
    And the user clicks on "custom search term overwrite checkbox" element on "Btris/Portal" page
    And the user enters "<List Name>" into "custom search term list: list name field" on "Btris/Portal" page
    And the user enters "Automation Description Test Text" into "custom search term list: description" text area box on "Btris/Portal" page
    And the user selects "<Domain>" from "custom search term list: domain drop down" drop down on "Btris/Portal" page
    #And the user verify if "<Search Term data>" document already exist and if not user uploads new "<Search Term Document>" and continue
    And user attached "<Search Term Document>" file into "custom search term list: brows upload" on "Btris/Portal" page
    And the user clicks on "custom search term list: upload button" element on "Btris/Portal" page
    And the user must see "Upload succeeded" text in "upload status" field on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user must see "Search Term Lists" text in "search term list table" field on "Btris/Portal" page
    And the user clicks on "reference list" element on "Btris/Portal" page
    #Filter and remove Reference list added by the test.
    And the user enters "<Reference Name>" into "reference list: search box" on "Btris/Portal" page
    And the user verify if existing "<Reference Name>" data exist and remove it
    And the user clicks on "custom reference lists upload button" element on "Btris/Portal" page
    And the user enters "<User>" into "reference list upload: user field" on "Btris/Portal" page
    And the user remembers the value of "reference list upload: user" field into "User Name" on "Btris/Portal" page
    And the user clicks on "reference list upload: user" element on "Btris/Portal" page
    And the user remembers the value of "upload reference list page title" field into "Reference List Page Title" on "Btris/Portal" page
    And the user remembers the value of "overwrite existing reference list" field into "Page Text" on "Btris/Portal" page
    And the user enters "<Reference Name>" into "reference list: list name field" on "Btris/Portal" page
    And the user clicks on "reference list: overwrite checkbox" element on "Btris/Portal" page
    And the user enters "Automation Description Test Text" into "reference list: description" text area box on "Btris/Portal" page
    And the user enters "<Reference Date Type>" into "reference list: date type" on "Btris/Portal" page
    #And the user verify if "<Reference Name>" document already exist and if not user uploads new "<Reference Term Document>" and continue
    And user attached "<Reference Term Document>" file into "reference list: brows upload" on "Btris/Portal" page
    And the user clicks on "reference list: upload button" element on "Btris/Portal" page
    And the user must see "Upload succeeded" text in "upload status" field on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user must see "Reference Lists" text in "reference lists table" field on "Btris/Portal" page
    And the user clicks on "nav arrow to active protocol" element on "Btris/Portal" page

    #Sign out.
    And the user logged out of the system

    Examples:
      | Search Term data          | User_Name   | List Name                 | User                     | Domain      | Search Term Document                       | Reference Name        | Reference Date Type | Reference Term Document           |
      | New Vital Signs Template1 | btris_test2 | New Vital Signs Template1 | BTRIS_TEST2 - TEST2 null | Vital Signs | Updated_Vitals_final_Search_Term_List.xlsx | New Reference List DN | MM/DD/YYYY          | Updated_vital_reference_list.xlsx |


  @Vital_Signs2

  Scenario Outline: 1.2 Running Reports Search for Vital Signs and Reference List Documents Reports, 10days.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login with "<User_Name>" to the btris application
    #Verify the condition page to accespt it.
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #Verify and click on Reference List Report top na.
    And the user remembers the value of "reference list top nav" field into "Report Type" on "Btris/Portal" page
    And the user clicks on "reference list top nav" element on "Btris/Portal" page
    #click on the Laboratory Test.
    And the user remembers the value of "reference list reports: vital sign" field into "Criteria List" on "Btris/Portal" page
    #click on the Vital Sign Test.
    And the user clicks on "reference list vital sign" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "reference list vital signs report filter page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Vital Signs Criteria" text in "reference list vital signs report filter page" field on "Btris/Portal" page
    And the user selects "<Reference Name>" from "reference list drop down" search term list drop down and "<Reference Date Type>" and "<Reference Term Document>" then reenter "<New Reference Name>" on "Btris/Portal" page
    And the user enters "<Number of Days Before>" into "reference list day range text box" on "Btris/Portal" page
    And the user enters "<Number of Days After>" into "number of days after text box" on "Btris/Portal" page
    And the user enters "<Number of Values>" into "number of values text box" on "Btris/Portal" page
    And the user verify and select selects "<Labs>" from "labs drop down" drop down and provide "<List Name>" and "<User>" and "<Domain>" and "<Search Term Document>" on "Btris/Portal" page
    And the user remembers the value of "preview header" field into "Results Preview - Page" on "Btris/Portal" page
    And the user verify if the report failed
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Vital Signs Results Preview - Standard" text in "reference list: vital signs report results table" field on "Btris/Portal" page
    #Verify and validate the Results.
    And the user remembers the value of "vital sign results" field into "Loaded Vital Signs Report" on "Btris/Portal" page
    #And the user verify the reference list vital sign report and "<Validation Record>" on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user must see "Vital Signs Results Preview - Standard" text in "reference list: vital signs report results table" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Labs                          | User_Name   | Number of Values | Number of Days Before | Reference Name            | Number of Days After | Validation Record | Reference Date Type | Reference Term Document            | User                     | Domain      | Search Term Document                       | New Reference Name    | List Name                 |
      | T - New Vital Signs Template1 | btris_test2 | 10               | 190                   | T - New Reference List DN | 180                  | No records found  | MM/DD/YYYY          | Updated_vital_reference_list.xlsxx | BTRIS_TEST2 - TEST2 null | Vital Signs | Updated_Vitals_final_Search_Term_List.xlsx | New Reference List DN | New Vital Signs Template1 |

  @Vital_Signs3

  Scenario Outline: 1.3 Running Reports Search for Vital Signs and Reference List Documents Reports, 15 days.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login with "<User_Name>" to the btris application
    #Verify the condition page to accespt it.
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #Verify and click on Reference List Report top na.
    And the user remembers the value of "reference list top nav" field into "Report Type" on "Btris/Portal" page
    And the user clicks on "reference list top nav" element on "Btris/Portal" page
    #click on the Laboratory Test.
    And the user remembers the value of "reference list reports: vital sign" field into "Criteria List" on "Btris/Portal" page
    #click on the Vital Sign Test.
    And the user clicks on "reference list vital sign" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "reference list vital signs report filter page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Vital Signs Criteria" text in "reference list vital signs report filter page" field on "Btris/Portal" page
    And the user selects "<Reference Name>" from "reference list drop down" search term list drop down and "<Reference Date Type>" and "<Reference Term Document>" then reenter "<New Reference Name>" on "Btris/Portal" page
    And the user enters "<Number of Days Before>" into "reference list day range text box" on "Btris/Portal" page
    And the user enters "<Number of Days After>" into "number of days after text box" on "Btris/Portal" page
    And the user enters "<Number of Values>" into "number of values text box" on "Btris/Portal" page
    And the user verify and select selects "<Labs>" from "labs drop down" drop down and provide "<List Name>" and "<User>" and "<Domain>" and "<Search Term Document>" on "Btris/Portal" page
    And the user remembers the value of "preview header" field into "Results Preview - Page" on "Btris/Portal" page
    And the user verify if the report failed
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Vital Signs Results Preview - Standard" text in "reference list: vital signs report results table" field on "Btris/Portal" page
    #Verify and validate the Results.
    And the user remembers the value of "vital sign results" field into "Loaded Vital Signs Report" on "Btris/Portal" page
    #And the user verify the reference list vital sign report and "<Validation Record>" on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user must see "Vital Signs Results Preview - Standard" text in "reference list: vital signs report results table" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Labs                          | User_Name   | Number of Values | Number of Days Before | Reference Name            | Number of Days After | Reference Date Type | Reference Term Document            | User                     | Domain      | Search Term Document                       | New Reference Name    | List Name                 |
      | T - New Vital Signs Template1 | btris_test2 | 15               | 260                   | T - New Reference List DN | 240                  | MM/DD/YYYY          | Updated_vital_reference_list.xlsxx | BTRIS_TEST2 - TEST2 null | Vital Signs | Updated_Vitals_final_Search_Term_List.xlsx | New Reference List DN | New Vital Signs Template1 |

  @Vital_Signs4

  Scenario Outline: 1.4 Running Reports Search for Vital Signs and Reference List Documents Reports, 5 days.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login with "<User_Name>" to the btris application
    #Verify the condition page to accespt it.
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #Verify and click on Reference List Report top na.
    And the user remembers the value of "reference list top nav" field into "Report Type" on "Btris/Portal" page
    And the user clicks on "reference list top nav" element on "Btris/Portal" page
    #click on the Laboratory Test.
    And the user remembers the value of "reference list reports: vital sign" field into "Criteria List" on "Btris/Portal" page
    #click on the Vital Sign Test.
    And the user clicks on "reference list vital sign" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "reference list vital signs report filter page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Vital Signs Criteria" text in "reference list vital signs report filter page" field on "Btris/Portal" page
    And the user selects "<Reference Name>" from "reference list drop down" search term list drop down and "<Reference Date Type>" and "<Reference Term Document>" then reenter "<New Reference Name>" on "Btris/Portal" page
    And the user enters "<Number of Days Before>" into "reference list day range text box" on "Btris/Portal" page
    And the user enters "<Number of Days After>" into "number of days after text box" on "Btris/Portal" page
    And the user enters "<Number of Values>" into "number of values text box" on "Btris/Portal" page
    And the user verify and select selects "<Labs>" from "labs drop down" drop down and provide "<List Name>" and "<User>" and "<Domain>" and "<Search Term Document>" on "Btris/Portal" page
    And the user remembers the value of "preview header" field into "Results Preview - Page" on "Btris/Portal" page
    And the user verify if the report failed
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Vital Signs Results Preview - Standard" text in "reference list: vital signs report results table" field on "Btris/Portal" page
    #Verify and validate the Results.
    And the user remembers the value of "vital sign results" field into "Loaded Vital Signs Report" on "Btris/Portal" page
    #And the user verify the reference list vital sign report and "<Validation Record>" on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user must see "Vital Signs Results Preview - Standard" text in "reference list: vital signs report results table" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Labs                          | User_Name   | Number of Values | Number of Days Before | Reference Name            | Number of Days After | Validation Record | Reference Date Type | Reference Term Document            | User                     | Domain      | Search Term Document                       | New Reference Name    | List Name                 |
      | T - New Vital Signs Template1 | btris_test2 | 5                | 230                   | T - New Reference List DN | 230                  | No records found  | MM/DD/YYYY          | Updated_vital_reference_list.xlsxx | BTRIS_TEST2 - TEST2 null | Vital Signs | Updated_Vitals_final_Search_Term_List.xlsx | New Reference List DN | New Vital Signs Template1 |


  @Vital_Signs5

  Scenario Outline: 1.5 Running Reports Search for Vital Signs and Reference List Documents Reports, 1 day.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login with "<User_Name>" to the btris application
    #Verify the condition page to accespt it.
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #Verify and click on Reference List Report top na.
    And the user remembers the value of "reference list top nav" field into "Report Type" on "Btris/Portal" page
    And the user clicks on "reference list top nav" element on "Btris/Portal" page
    #click on the Laboratory Test.
    And the user remembers the value of "reference list reports: vital sign" field into "Criteria List" on "Btris/Portal" page
    #click on the Vital Sign Test.
    And the user clicks on "reference list vital sign" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "reference list vital signs report filter page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Vital Signs Criteria" text in "reference list vital signs report filter page" field on "Btris/Portal" page
    And the user selects "<Reference Name>" from "reference list drop down" search term list drop down and "<Reference Date Type>" and "<Reference Term Document>" then reenter "<New Reference Name>" on "Btris/Portal" page
    And the user enters "<Number of Days Before>" into "reference list day range text box" on "Btris/Portal" page
    And the user enters "<Number of Days After>" into "number of days after text box" on "Btris/Portal" page
    And the user enters "<Number of Values>" into "number of values text box" on "Btris/Portal" page
    And the user verify and select selects "<Labs>" from "labs drop down" drop down and provide "<List Name>" and "<User>" and "<Domain>" and "<Search Term Document>" on "Btris/Portal" page
    And the user remembers the value of "preview header" field into "Results Preview - Page" on "Btris/Portal" page
    And the user verify if the report failed
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Vital Signs Results Preview - Standard" text in "reference list: vital signs report results table" field on "Btris/Portal" page
    #Verify and validate the Results.
    And the user remembers the value of "vital sign results" field into "Loaded Vital Signs Report" on "Btris/Portal" page
    #And the user verify the reference list vital sign report and "<Validation Record>" on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user must see "Vital Signs Results Preview - Standard" text in "reference list: vital signs report results table" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Labs                      | User_Name   | Number of Values | Number of Days Before | Reference Name        | Number of Days After | Validation Record | Reference Date Type | Reference Term Document            | User                     | Domain      | Search Term Document                       | New Reference Name    | List Name                 |
      | New Vital Signs Template1 | btris_test2 | 1                | 115                   | New Reference List DN | 125                  | No records found  | MM/DD/YYYY          | Updated_vital_reference_list.xlsxx | BTRIS_TEST2 - TEST2 null | Vital Signs | Updated_Vitals_final_Search_Term_List.xlsx | New Reference List DN | New Vital Signs Template1 |


  @Vital_Signs6

  Scenario Outline: 1.6 Running Reports Search for Vital Signs and Reference List Documents Reports, 7 day.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login with "<User_Name>" to the btris application
    #Verify the condition page to accespt it.
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #Verify and click on Reference List Report top na.
    And the user remembers the value of "reference list top nav" field into "Report Type" on "Btris/Portal" page
    And the user clicks on "reference list top nav" element on "Btris/Portal" page
    #click on the Laboratory Test.
    And the user remembers the value of "reference list reports: vital sign" field into "Criteria List" on "Btris/Portal" page
    #click on the Vital Sign Test.
    And the user clicks on "reference list vital sign" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "reference list vital signs report filter page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Vital Signs Criteria" text in "reference list vital signs report filter page" field on "Btris/Portal" page
    And the user selects "<Reference Name>" from "reference list drop down" search term list drop down and "<Reference Date Type>" and "<Reference Term Document>" then reenter "<New Reference Name>" on "Btris/Portal" page
    And the user enters "<Number of Days Before>" into "reference list day range text box" on "Btris/Portal" page
    And the user enters "<Number of Days After>" into "number of days after text box" on "Btris/Portal" page
    And the user enters "<Number of Values>" into "number of values text box" on "Btris/Portal" page
    And the user verify and select selects "<Labs>" from "labs drop down" drop down and provide "<List Name>" and "<User>" and "<Domain>" and "<Search Term Document>" on "Btris/Portal" page
    And the user remembers the value of "preview header" field into "Results Preview - Page" on "Btris/Portal" page
    And the user verify if the report failed
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Vital Signs Results Preview - Standard" text in "reference list: vital signs report results table" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    #Verify and validate the Results.
    And the user remembers the value of "vital sign results" field into "Loaded Vital Signs Report" on "Btris/Portal" page
    #And the user verify the reference list vital sign report and "<Validation Record>" on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user must see "Vital Signs Results Preview - Standard" text in "reference list: vital signs report results table" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Labs                          | User_Name   | Number of Values | Number of Days Before | Reference Name            | Number of Days After | Validation Record | Reference Date Type | Reference Term Document            | User                     | Domain      | Search Term Document                       | New Reference Name    | List Name                 |
      | T - New Vital Signs Template1 | btris_test2 | 7                | 365                   | T - New Reference List DN | 365                  | No records found  | MM/DD/YYYY          | Updated_vital_reference_list.xlsxx | BTRIS_TEST2 - TEST2 null | Vital Signs | Updated_Vitals_final_Search_Term_List.xlsx | New Reference List DN | New Vital Signs Template1 |

  @Vital_Signs7

  Scenario Outline: 1.7 Running Reports Search for Vital Signs and Reference List Documents Reports, 13 day.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login with "<User_Name>" to the btris application
    #Verify the condition page to accespt it.
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #Verify and click on Reference List Report top na.
    And the user remembers the value of "reference list top nav" field into "Report Type" on "Btris/Portal" page
    And the user clicks on "reference list top nav" element on "Btris/Portal" page
    #click on the Laboratory Test.
    And the user remembers the value of "reference list reports: vital sign" field into "Criteria List" on "Btris/Portal" page
    #click on the Vital Sign Test.
    And the user clicks on "reference list vital sign" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "reference list vital signs report filter page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Vital Signs Criteria" text in "reference list vital signs report filter page" field on "Btris/Portal" page
    And the user selects "<Reference Name>" from "reference list drop down" search term list drop down and "<Reference Date Type>" and "<Reference Term Document>" then reenter "<New Reference Name>" on "Btris/Portal" page
    And the user enters "<Number of Days Before>" into "reference list day range text box" on "Btris/Portal" page
    And the user enters "<Number of Days After>" into "number of days after text box" on "Btris/Portal" page
    And the user enters "<Number of Values>" into "number of values text box" on "Btris/Portal" page
    And the user verify and select selects "<Labs>" from "labs drop down" drop down and provide "<List Name>" and "<User>" and "<Domain>" and "<Search Term Document>" on "Btris/Portal" page
    And the user remembers the value of "preview header" field into "Results Preview - Page" on "Btris/Portal" page
    And the user verify if the report failed
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Vital Signs Results Preview - Standard" text in "reference list: vital signs report results table" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    #Verify and validate the Results.
    And the user remembers the value of "vital sign results" field into "Loaded Vital Signs Report" on "Btris/Portal" page
    #And the user verify the reference list vital sign report and "<Validation Record>" on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user must see "Vital Signs Results Preview - Standard" text in "reference list: vital signs report results table" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Labs                          | User_Name   | Number of Values | Number of Days Before | Reference Name            | Number of Days After | Validation Record | Reference Date Type | Reference Term Document            | User                     | Domain      | Search Term Document                       | New Reference Name    | List Name                 |
      | T - New Vital Signs Template1 | btris_test2 | 13               | 200                   | T - New Reference List DN | 150                  | No records found  | MM/DD/YYYY          | Updated_vital_reference_list.xlsxx | BTRIS_TEST2 - TEST2 null | Vital Signs | Updated_Vitals_final_Search_Term_List.xlsx | New Reference List DN | New Vital Signs Template1 |


  @Vital_Signs8

  Scenario Outline: 1.8 Running Reports Search for Vital Signs and Reference List Documents Reports, 8 day.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login with "<User_Name>" to the btris application
    #Verify the condition page to accespt it.
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #Verify and click on Reference List Report top na.
    And the user remembers the value of "reference list top nav" field into "Report Type" on "Btris/Portal" page
    And the user clicks on "reference list top nav" element on "Btris/Portal" page
    #click on the Laboratory Test.
    And the user remembers the value of "reference list reports: vital sign" field into "Criteria List" on "Btris/Portal" page
    #click on the Vital Sign Test.
    And the user clicks on "reference list vital sign" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user remembers the value of "reference list vital signs report filter page" field into "Criteria Page" on "Btris/Portal" page
    And the user must see "Vital Signs Criteria" text in "reference list vital signs report filter page" field on "Btris/Portal" page
    And the user selects "<Reference Name>" from "reference list drop down" search term list drop down and "<Reference Date Type>" and "<Reference Term Document>" then reenter "<New Reference Name>" on "Btris/Portal" page
    And the user enters "<Number of Days Before>" into "reference list day range text box" on "Btris/Portal" page
    And the user enters "<Number of Days After>" into "number of days after text box" on "Btris/Portal" page
    And the user enters "<Number of Values>" into "number of values text box" on "Btris/Portal" page
    And the user verify and select selects "<Labs>" from "labs drop down" drop down and provide "<List Name>" and "<User>" and "<Domain>" and "<Search Term Document>" on "Btris/Portal" page
    And the user remembers the value of "preview header" field into "Results Preview - Page" on "Btris/Portal" page
    And the user verify if the report failed
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Vital Signs Results Preview - Standard" text in "reference list: vital signs report results table" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    #Verify and validate the Results.
    And the user remembers the value of "vital sign results" field into "Loaded Vital Signs Report" on "Btris/Portal" page
    #And the user verify the reference list vital sign report and "<Validation Record>" on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user must see "Vital Signs Results Preview - Standard" text in "reference list: vital signs report results table" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Labs                          | User_Name   | Number of Values | Number of Days Before | Reference Name            | Number of Days After | Validation Record | Reference Date Type | Reference Term Document            | User                     | Domain      | Search Term Document                       | New Reference Name    | List Name                 |
      | T - New Vital Signs Template1 | btris_test2 | 8                | 200                   | T - New Reference List DN | 150                  | No records found  | MM/DD/YYYY          | Updated_vital_reference_list.xlsxx | BTRIS_TEST2 - TEST2 null | Vital Signs | Updated_Vitals_final_Search_Term_List.xlsx | New Reference List DN | New Vital Signs Template1 |


  @Vital_Signs9

  Scenario Outline: 1.8 Adding Search Term List Document and Reference List Documents with negative MRN Number for Radiology.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login with "<User_Name>" to the btris application
    #Verify the condition page to accespt it.
    And the user remembers the value of "warning pop-up message" field into "Warning Header" on "Btris/Portal" page
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    And the user remembers the value of "reference list top nav" field into "Report Type" on "Btris/Portal" page
    #Verify and click on Reference List Report top na.
    And the user clicks on "reference list top nav" element on "Btris/Portal" page
    And the user remembers the value of "reference list reports: laboratory" field into "Criteria List" on "Btris/Portal" page
    #click on the Vital Sign Test.
    And the user clicks on "reference list vital sign" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user remembers the value of "reference list vital signs report filter page" field into "Criteria Page" on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Vital Signs Criteria" text in "reference list vital signs report filter page" field on "Btris/Portal" page
    #Clcik on the user drop down.
    And the user clicks on "custom user drop down" element on "Btris/Portal" page
    #Clcik on custom list.
    And the user clicks on "custom list" element on "Btris/Portal" page
    And the user clicks on "left nav: search term list" element on "Btris/Portal" page
    #Filter and remove search term list added by the test.
    And the user enters "<Search Term data>" into "custom list search term box" on "Btris/Portal" page
    And the user verify if existing "<Search Term data>" exist and remove it
    And the user clicks on "custom search term list upload button" element on "Btris/Portal" page
    And the user remembers the value of "upload search term list page title" field into "Page Title" on "Btris/Portal" page
    And the user remembers the value of "overwrite existing list" field into "Page Text" on "Btris/Portal" page
    And the user enters "<User>" into "custom search term list: user field" on "Btris/Portal" page
    And the user remembers the value of "custom search term list: user" field into "User Name" on "Btris/Portal" page
    And the user clicks on "custom search term list: user" element on "Btris/Portal" page
    And the user clicks on "custom search term overwrite checkbox" element on "Btris/Portal" page
    And the user enters "<List Name>" into "custom search term list: list name field" on "Btris/Portal" page
    And the user enters "Automation Description Test Text" into "custom search term list: description" text area box on "Btris/Portal" page
    And the user selects "<Domain>" from "custom search term list: domain drop down" drop down on "Btris/Portal" page
    #And the user verify if "<Search Term data>" document already exist and if not user uploads new "<Search Term Document>" and continue
    And user attached "<Search Term Document>" file into "custom search term list: brows upload" on "Btris/Portal" page
    And the user clicks on "custom search term list: upload button" element on "Btris/Portal" page
    And the user must see "Upload failed" text in "upload status failed" field on "Btris/Portal" page
    And the user must see "Line 2 - MRI Brain (CC, RADNET) is not in domain Vital Signs" text in "upload list error" field on "Btris/Portal" page
    And the user must see "Line 3 - CT Abdomen (CC, MIS) is not in domain Vital Signs" text in "upload list error" field on "Btris/Portal" page
    And user attached "<Search Term Document1>" file into "custom search term list: brows upload" on "Btris/Portal" page
    And the user clicks on "custom search term list: upload button" element on "Btris/Portal" page
    And the user must see "Upload succeeded" text in "upload status 2" field on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user must see "Search Term Lists" text in "search term list table" field on "Btris/Portal" page
    And the user clicks on "reference list" element on "Btris/Portal" page
    #Filter and remove Reference list added by the test.
    And the user enters "<Reference Name>" into "reference list: search box" on "Btris/Portal" page
    And the user verify if existing "<Reference Name>" data exist and remove it
    And the user clicks on "custom reference lists upload button" element on "Btris/Portal" page
    And the user enters "<User>" into "reference list upload: user field" on "Btris/Portal" page
    And the user remembers the value of "reference list upload: user" field into "User Name" on "Btris/Portal" page
    And the user clicks on "reference list upload: user" element on "Btris/Portal" page
    And the user enters "<Reference Name>" into "reference list: list name field" on "Btris/Portal" page
    And the user clicks on "reference list: overwrite checkbox" element on "Btris/Portal" page
    And the user enters "Automation Description Test Text" into "reference list: description" text area box on "Btris/Portal" page
    And the user enters "<Reference Date Type>" into "reference list: date type" on "Btris/Portal" page
    And user attached "<Reference Term Document Negative>" file into "reference list: brows upload" on "Btris/Portal" page
    And the user clicks on "reference list: upload button" element on "Btris/Portal" page
    And the user must see "Upload failed" text in "upload status failed" field on "Btris/Portal" page
    And the user must see "Line 2 - Unknown MRN" text in "upload list error" field on "Btris/Portal" page
    And user attached "<Reference Term Document>" file into "reference list: brows upload" on "Btris/Portal" page
    And the user clicks on "reference list: upload button" element on "Btris/Portal" page
    And the user must see "Upload succeeded" text in "upload status 2" field on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user must see "Reference Lists" text in "reference lists table" field on "Btris/Portal" page
    And the user clicks on "nav arrow to active protocol" element on "Btris/Portal" page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Search Term data         | User_Name   | List Name                | User                     | Domain      | Search Term Document         | Reference Name        | Reference Date Type | Reference Term Document           | Reference Term Document Negative      | Search Term Document1        |
      | Vital Signs -N Template1 | btris_test2 | Vital -N Signs Template1 | BTRIS_TEST2 - TEST2 null | Vital Signs | Search_Tearm_List_Data1.xlsx | Reference List1 -N DN | MM/DD/YYYY          | Radiology_New_Reference_List.xlsx | Reference_List_Negative_Template.xlsx | Vital_Signs_Search_Term.xlsx |

