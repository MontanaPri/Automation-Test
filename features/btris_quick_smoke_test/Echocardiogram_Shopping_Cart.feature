@BTRIS_Quick_Smoke_Test
@Echocardiogram_SC_Test_Report
Feature: BTRIS Echocardiogram Shopping Cart Test Report


  @Echocardiogram_Smoke_TestSC1

  Scenario Outline: 14.1 Echocardiogram Report Including All echocardiogram Tests with Shopping cart.
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
    #click on the Echocardiogram test.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "btris: echocardiogram test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user remembers the value of "btris: echocardiogram report page" field into "Criteria Page" on "Btris/Portal" page
    And the user enters "<Echocardiogram Tests>" into "echocardiogram tests search fields" on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user remembers the value of "echo tests" field into "Criteria Page" on "Btris/Portal" page
    #And the user clicks on "echocardiogram test selected" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Echocardiogram Criteria" text in "btris: echocardiogram report page" field on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: bottom select button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user verify that searched "<Subject>" is available
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user clicks on "uncheck all" element on "Btris/Portal" page
    And the user clicks on "check subject" element on "Btris/Portal" page
    And the user waits for 3 seconds
    #click on run report button.
    And the user clicks the "run report button" button on "Btris/Portal" page
    Then the user verify if the report is unable to run with message
    And the user remembers the value of "echocardiogram result page" field into "Results Preview - Page" on "Btris/Portal" page
    #Then the user verify if the report failed
    #Verify assessment report results.
    And the user waits for 5 seconds
    And the user verify if the report failed
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "Echocardiogram Results Preview - Standard" text in "echocardiogram result page" field on "Btris/Portal" page
    #Verify and validate the report display.
    And the user remembers the value of "echocardiogram results" field into "Loaded Echocardiogram Report" on "Btris/Portal" page
    Then the user verify if the are any more errors with the report
    And the user clicks on "my report selections button" element on "Btris/Portal" page
    And the user must see "My Report Selections" text in "my report selections cart" field on "Btris/Portal" page
    And the user can see current value of "Protocol Number" in "cart protocol list" field on "Btris/Portal" page
    And the user clicks on "edit/view report criteria button" element on "Btris/Portal" page
    And the user clicks on "close shopping cart icon" element on "Btris/Portal" page
    And the user remembers the value of "btris: echocardiogram report page" field into "Criteria Page" on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Echocardiogram Criteria" text in "btris: echocardiogram report page" field on "Btris/Portal" page
    And the user enters "<Meds Order Start Date>" into "echocardiogram start date" on "Btris/Portal" page
    And the user enters "Todays Date" into "echocardiogram end date" on "Btris/Portal" page
    #Clcik on the select report button.
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user verify that searched "<Subject>" is available
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    #And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    And the user remembers the value of "echocardiogram result page" field into "Results Preview - Page" on "Btris/Portal" page
    And the user must see "Echocardiogram Results Preview - Standard" text in "echocardiogram result page" field on "Btris/Portal" page
    And user refresh the browser
    And the user waits for 5 seconds
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
    And the user clicks on "run report button" element on "Btris/Portal" page
    And the user remembers the value of "echocardiogram result page" field into "Results Preview - Page" on "Btris/Portal" page
    And the user must see "Echocardiogram Results Preview - Standard" text in "echocardiogram result page" field on "Btris/Portal" page

    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject   | User_Name   | Subject 1     | Meds Order Start Date | Echocardiogram Tests                                                   |
      | 00-C-0078 | btris_test2 | BTRIS-TEST-03 | 4/12/2006             | Modified Bruce Protocol Exercise Tolerance Echocardiography, Procedure |

