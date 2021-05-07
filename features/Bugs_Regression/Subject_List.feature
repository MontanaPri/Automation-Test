@BTRIS_Bug_Regression
@Subject_List_New_Protocol_Test
Feature: BTRIS Load Subject List Template With New Protocol Report

  @Subject_List_NewProtocol-1.0

  Scenario Outline: 1.1 Loading and uploading subject list with New Protocols and running lab report.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login with "<User_Name>" to the btris application
    And verify that "<User_Name>" account load properly
    #Verify the condition page to accespt it.
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #Clcik on the user drop down.
    And the user clicks on "custom user drop down" element on "Btris/Portal" page
    #Clcik on custom list.
    And the user clicks on "custom list" element on "Btris/Portal" page
    And the user clicks on "left nav: subject list" element on "Btris/Portal" page
    #Filter and remove search term list added by the test.
    And the user enters "<Subject List data>" into "find subject list search box" on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user verify if existing subject "<Subject List data>" data exist and remove it
    And the user clicks on "subject list upload button" element on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user enters "<User>" into "subject list: user field" on "Btris/Portal" page
    And the user clicks on "subject list: user" element on "Btris/Portal" page
    And the user clicks on "subject list overwrite checkbox" element on "Btris/Portal" page
    And the user enters "<List Name>" into "subject list: list name field" on "Btris/Portal" page
    And the user enters "Automation Description Test Text" into "subject list: description" text area box on "Btris/Portal" page
    And user attached "<Subject List Document>" file into "subject list: brows upload" on "Btris/Portal" page
    And the user clicks on "subject list: upload doc button" element on "Btris/Portal" page
    And the user remembers the value of "upload status" field into "Upload Successful" on "Btris/Portal" page
    And the user must see "Upload succeeded" text in "upload status" field on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user clicks on "nav arrow to active protocol" element on "Btris/Portal" page
    And the user waits for 1 seconds
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "laboratory test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Laboratory Criteria" text in "btris: laboratory filter report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject List data>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user verify that searched "<Subject>" is available
    And the user remembers the value of "subject count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "subject list" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #click on run report button.
    And the user clicks the "run report button" button on "Btris/Portal" page
    Then the user verify if the report is unable to run with message
    And the user remembers the value of "laboratory and procedure report page" field into "Results Preview - Page" on "Btris/Portal" page
    #Then the user verify if the report failed
    And the user verify if the report failed
    #Verify the laboratory report table.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Laboratory Results Preview - Standard" text in "laboratory and procedure report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user remembers the value of "laboratory results" field into "Loaded Laboratory Report" on "Btris/Portal" page
    Then the user verify if the are any more errors with the report
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "laboratory results" field into "Loaded Laboratory Report" on "Btris/Portal" page
    And the user must see "Laboratory Results Preview - Standard" text in "laboratory report page" field on "Btris/Portal" page
    And the return to main page

    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject List data            | User_Name   | List Name                    | User                     | Subject List Document              |
      | Subject List New Protocol DN | btris_test2 | Subject List New Protocol DN | BTRIS_TEST2 - TEST2 null | Subject_List_New_Protocol_Doc.xlsx |



  @Subject_List_LowerCase_Protocol-1.2

  Scenario Outline: 1.1 Loading and uploading subject list with Protocols with lower case and running lab report.
  #Login to the system.
    Given the user navigates to / on browser
    And the user must see "Log in to BTRIS" text in "btris home: landing page" field on "Btris/Portal" page
    #Login to the BTRIS system.
    And the user login with "<User_Name>" to the btris application
    And verify that "<User_Name>" account load properly
    #Verify the condition page to accespt it.
    And the user must see "Conditions of Use and Code of Conduct" text in "btris: accept page" field on "Btris/Portal" page
    #Click on the accept button.
    And the user clicks on "btris: accept button" element on "Btris/Portal" page
    #Verify and click on active protocol.
    And the user clicks on "btris: active protocol button" element on "Btris/Portal" page
    #Clcik on the user drop down.
    And the user clicks on "custom user drop down" element on "Btris/Portal" page
    #Clcik on custom list.
    And the user clicks on "custom list" element on "Btris/Portal" page
    And the user clicks on "left nav: subject list" element on "Btris/Portal" page
    #Filter and remove search term list added by the test.
    And the user enters "<New Subject List data>" into "find subject list search box" on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user verify if existing subject "<New Subject List data>" data exist and remove it
    And the user clicks on "subject list upload button" element on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user enters "<User>" into "subject list: user field" on "Btris/Portal" page
    And the user clicks on "subject list: user" element on "Btris/Portal" page
    And the user clicks on "subject list overwrite checkbox" element on "Btris/Portal" page
    And the user enters "<List Name>" into "subject list: list name field" on "Btris/Portal" page
    And the user enters "Automation Description Test Text" into "subject list: description" text area box on "Btris/Portal" page
    And user attached "<Subject List Document>" file into "subject list: brows upload" on "Btris/Portal" page
    And the user clicks on "subject list: upload doc button" element on "Btris/Portal" page
    And the user remembers the value of "upload status" field into "Upload Successful" on "Btris/Portal" page
    And the user must see "Upload succeeded" text in "upload status" field on "Btris/Portal" page
    And the user waits for 3 seconds
    And the user clicks on "nav arrow to active protocol" element on "Btris/Portal" page
    And the user waits for 1 seconds
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "laboratory test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Laboratory Criteria" text in "btris: laboratory filter report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<New Subject List data>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user verify that searched "<Subject>" is available
    And the user remembers the value of "subject count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "subject list" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #click on run report button.
    And the user clicks the "run report button" button on "Btris/Portal" page
    Then the user verify if the report is unable to run with message
    And the user remembers the value of "laboratory and procedure report page" field into "Results Preview - Page" on "Btris/Portal" page
    #Then the user verify if the report failed
    And the user verify if the report failed
    #Verify the laboratory report table.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Laboratory Results Preview - Standard" text in "laboratory and procedure report page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user remembers the value of "laboratory results" field into "Loaded Laboratory Report" on "Btris/Portal" page
    Then the user verify if the are any more errors with the report
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "laboratory results" field into "Loaded Laboratory Report" on "Btris/Portal" page
    And the user must see "Laboratory Results Preview - Standard" text in "laboratory report page" field on "Btris/Portal" page
    And the return to main page

    #Sign out.
    And the user logged out of the system

    Examples:
      | New Subject List data  | User_Name   | List Name              | User                     | Subject List Document                    |
      | lower case protocol dn | btris_test2 | lower case protocol dn | BTRIS_TEST2 - TEST2 null | Subject_List_LowerCase_Protocol_Doc.xlsx |
