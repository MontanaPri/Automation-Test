@BTRIS_Quick_Smoke_Test
@Laboratory_Ad_Hoc_Sve_Test
Feature: BTRIS Laboratory Ad Hoc Save Test Report


  @Laboratory_AH_Save

  Scenario Outline: 1.1 Ad hoc save or Overwrite Custom list for Laboratory Report.
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
    And the user must see "Laboratory Criteria" text in "btris: laboratory filter report page" field on "Btris/Portal" page
    And the user clicks the "add lab button" button on "Btris/Portal" page
    And the user must see "Add Labs" text in "add lab search pop-up" field on "Btris/Portal" page
    And the user enters "<Lab List Search String>" into "enter search string text-box" on "Btris/Portal" page
    And the user clicks the "add lab search button" button on "Btris/Portal" page
    And the user verify if "<Search Results>" from data feedback is return
    And the user remembers the value of "add lab search results" field into "Custom Lab List Result" on "Btris/Portal" page
    And the user clicks on "results 1" element on "Btris/Portal" page
    And the user clicks on "results 2" element on "Btris/Portal" page
    And the user clicks on "results 3" element on "Btris/Portal" page
    And the user clicks on "results 4" element on "Btris/Portal" page
    And the user clicks on "results 5" element on "Btris/Portal" page
    And the user clicks on "results 6" element on "Btris/Portal" page
    And the user clicks the "add lab done button" button on "Btris/Portal" page
    And the user remembers the value of "added lab lists" field into "Selected Lab List" on "Btris/Portal" page
    And the user clicks on "save as custom lab list button" element on "Btris/Portal" page
    And the user must see "Save As Custom Lab List" text in "save as custom list dialog box" field on "Btris/Portal" page
    And the user enters "<User>" into "save lab list: user field" on "Btris/Portal" page
    And the user remembers the value of "save lab list: user name" field into "User Name" on "Btris/Portal" page
    And the user clicks on "save lab list: user name" element on "Btris/Portal" page
    And the user enters "<Custom Lab List Name>" into "list name text-box" on "Btris/Portal" page
    And the user clicks on "save button" element on "Btris/Portal" page
    Then the user verify if the saved list with name "<Lab List Name>" already exist and overwrite it
    And the user can see current value of "Selected Lab List" in "added lab lists" field on "Btris/Portal" page
    And the user waits for 2 seconds
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    And the user waits for 2 seconds
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
    And the user waits for 5 seconds
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
    And the user remembers the value of "subjects count" field into "Saved lab list subjects" on "Btris/Portal" page
    And the user remembers the value of "records count" field into "Saved lab list records" on "Btris/Portal" page
    And the user clicks on "top nav: enter report criteria" element on "Btris/Portal" page
    And the user waits for 1 seconds
    And the user clicks on "load custom lab list" element on "Btris/Portal" page
    And the user remembers the value of "add lab search pop-up" field into "Saved Custum Lab List" on "Btris/Portal" page
    And the user clicks on "saved custom lab list" element on "Btris/Portal" page
    And the user clicks on "load selected lists button" element on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user can see current value of "Selected Lab List" in "added lab lists" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    And the user waits for 2 seconds
    #click on run report button.
    And the user clicks the "run report button" button on "Btris/Portal" page
    Then the user verify if the report is unable to run with message
    And user refresh the browser
    And the user waits for 5 seconds
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
    And the user can see current value of "Saved lab list subjects" in "subjects count" field on "Btris/Portal" page
    And the user can see current value of "Saved lab list records" in "records count" field on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "laboratory results" field into "Loaded Laboratory Report" on "Btris/Portal" page
    And the user must see "Laboratory Results Preview - Standard" text in "laboratory report page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject   | User_Name   | Lab List Search String | Lab List Name               | User                     | Search Results               | Custom Lab List Name    |
      | 00-C-0133 | btris_test2 | Blood                  | T - New Test Lab Saved List | BTRIS_TEST2 - TEST2 null | No search results retrieved. | New Test Lab Saved List |
