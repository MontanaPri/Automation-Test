@BTRIS_Quick_Prod_Test
@PDF_Documents_Report_Prod_Data
Feature: BTRIS PDF Documents Report Feature Prod Data

  @PDF_Documents_ReporProd_Data1

  Scenario Outline: 5.1 PDF Documents Report Test without PDF/Scanned Documents with non-test protocols.
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
    #click on the  PDF Documents.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "pdf documents" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user must see "PDF Documents Criteria" text in "btris: pdf documents page" field on "Btris/Portal" page
    And the user enters "<PDF/Scanned Documents>" into "scanned pdf input field" on "Btris/Portal" page
    And the user remembers the value of "scanned pdf doc value" field into "Scanned Documents" on "Btris/Portal" page
    And the user clicks on "scanned pdf doc value" element on "Btris/Portal" page
    And the user enters "<PDF/Scanned Documents 2>" into "scanned pdf input field" on "Btris/Portal" page
    And the user remembers the value of "scanned pdf doc value 2" field into "Scanned Documents" on "Btris/Portal" page
    And the user clicks on "scanned pdf doc value 2" element on "Btris/Portal" page
    And the user enters "<PDF/Scanned Documents 3>" into "scanned pdf input field" on "Btris/Portal" page
    And the user remembers the value of "scanned pdf doc value 3" field into "Scanned Documents" on "Btris/Portal" page
    And the user clicks on "scanned pdf doc value 3" element on "Btris/Portal" page
    And the user enters "<PDF/Scanned Documents 4>" into "scanned pdf input field" on "Btris/Portal" page
    And the user remembers the value of "scanned pdf doc value 4" field into "Scanned Documents" on "Btris/Portal" page
    And the user clicks on "scanned pdf doc value 4" element on "Btris/Portal" page
    And the user clicks on "btris: top select subject button" element on "Btris/Portal" page
    #Enter and filter subject.
    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
    And the user verify that searched "<Subject>" is available
    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
    And the user waits for 4 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
   #Verify the document report table.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "PDF Documents Results Preview - Standard" text in "pdf documents result page" field on "Btris/Portal" page
    #And the user verify the pdf documents report on the table
    #Click on the download report button.
    And the user clicks on "download full report button" element on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user must see "PDF Documents Results Preview - Standard" text in "pdf documents result page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system


    Examples:
      | Subject   | User_Name   | Filtered Subject | PDF/Scanned Documents               | PDF/Scanned Documents 2                   | PDF/Scanned Documents 3                                    | PDF/Scanned Documents 4                    |
      | 00-C-0154 | btris_test2 | BOWEN            | Acupuncture Consult, Document Image | 12-Lead Electrocardiogram, Document Image | Abdominal Radiation Treatment Side Effects, Document Image | Activities of Daily Living, Document Image |

  @PDF_Documents_ReporProd_Data2

  Scenario Outline: 5.2 PDF Documents Report Test with All PDF/Scanned Documents with non-test protocols.
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
    #click on the  PDF Documents.
    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
    And the user clicks on "pdf documents" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    And the user must see "PDF Documents Criteria" text in "btris: pdf documents page" field on "Btris/Portal" page
    And the user enters "<PDF/Scanned Documents>" into "scanned pdf input field" on "Btris/Portal" page
    And the user remembers the value of "scanned pdf doc value" field into "Scanned Documents" on "Btris/Portal" page
    And the user clicks on "scanned pdf doc value" element on "Btris/Portal" page
    And the user enters "<PDF/Scanned Documents 2>" into "scanned pdf input field" on "Btris/Portal" page
    And the user remembers the value of "scanned pdf doc value 2" field into "Scanned Documents" on "Btris/Portal" page
    And the user clicks on "scanned pdf doc value 2" element on "Btris/Portal" page
    And the user enters "<PDF/Scanned Documents 3>" into "scanned pdf input field" on "Btris/Portal" page
    And the user remembers the value of "scanned pdf doc value 3" field into "Scanned Documents" on "Btris/Portal" page
    And the user clicks on "scanned pdf doc value 3" element on "Btris/Portal" page
    And the user enters "<PDF/Scanned Documents 4>" into "scanned pdf input field" on "Btris/Portal" page
    And the user remembers the value of "scanned pdf doc value 4" field into "Scanned Documents" on "Btris/Portal" page
    And the user clicks on "scanned pdf doc value 4" element on "Btris/Portal" page
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
    And the user waits for 4 seconds
    #click on run report button.
    And the user clicks on "run report button" element on "Btris/Portal" page
    #Verify the document report table.
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    #Verify report page.
    And the user must see "PDF Documents Results Preview - Standard" text in "pdf documents result page" field on "Btris/Portal" page
    #Verify and validate the report display and click on the the image to view.
    And the user must see "<Subject>" text in "search prod subject pd1" field on "Btris/Portal" page
    #click on the open report in another tab button.
    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
    And the switch to new tab page
    And the user remembers the value of "reports results" field into "Loaded Report" on "Btris/Portal" page
    And the user must see "PDF Documents Results Preview - Standard" text in "pdf documents result page" field on "Btris/Portal" page
    And the return to main page
    #Sign out.
    And the user logged out of the system

    Examples:
      | Subject   | User_Name   | Filtered Subject | PDF/Scanned Documents               | PDF/Scanned Documents 2                   | PDF/Scanned Documents 3                                    | PDF/Scanned Documents 4                    |
      | 00-C-0154 | btris_test2 | BOWEN            | Acupuncture Consult, Document Image | 12-Lead Electrocardiogram, Document Image | Abdominal Radiation Treatment Side Effects, Document Image | Activities of Daily Living, Document Image |