@BTRIS_Quick_Smoke_Test
@Lab_Cluster_Search_Test
@Laboratory_Cluster_Search_Test
Feature: BTRIS Laboratory Cluster Search Report


#  @Laboratory_Cluster_Search.1
#
#  Scenario Outline: 2.3 Laboratory Test Reports with Cluster Search.
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
#    #click on the Laboratory Test.
#    And the user remembers the value of "general reports" field into "Criteria List" on "Btris/Portal" page
#    And the user clicks on "laboratory test" element on "Btris/Portal" page
#    #Click on the create new report button.
#    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
#    #verify the select report page.
#    And the user remembers the value of "btris: laboratory filter report page" field into "Criteria Page" on "Btris/Portal" page
#    And the user must see "Laboratory Criteria" text in "btris: laboratory filter report page" field on "Btris/Portal" page
#    And the user clicks on "labs: add labs button" element on "Btris/Portal" page
#    #Enter search criteria in the red search keyword text box.
#    And the user enters "<Cluster Search Data>" into "cluster search input search box" on "Cluster/Search" page
#    #Click the search button.
#    And the user clicks on "red search: search button" element on "Btris/Portal" page
#    #Verify search data.
#    And the user must see "<Cluster Item>" text in "red search result" field on "Btris/Portal" page
#    And the user must see "<Cluster Group>" text in "red search result1" field on "Btris/Portal" page
#    And the user clicks on "sodium presentation group" element on "Btris/Portal" page
#    And the user verify total count of Sodium clusters
#    And the user clicks on "red search result1" element on "Btris/Portal" page
#    And the user clicks on "red search result2" element on "Btris/Portal" page
#    #Click on the done button
#    And the user clicks on "red search: done button" element on "Btris/Portal" page
#    And the user waits for 3 seconds
#    #Clcik on the select report button.
#    And the user clicks on "btris: bottom select button" element on "Btris/Portal" page
#    #Enter and filter subject.
#    And the user waits for 3 seconds
#    #Enter and filter subject.
#    And the user enters "<Subject>" into "fine protocol and subject search box" on "Btris/Portal" page
#    And the user remembers the value of "protocol verify count" field into "Number OF Subjects" on "Btris/Portal" page
#    And the user remembers the value of "selected protocol" field into "Protocol Number" on "Btris/Portal" page
#    And the user remembers the value of "protocol check button" field into "Protocol Checkbox" on "Btris/Portal" page
#    And the user focus and clicks on "protocol check button" element on "Btris/Portal" page
#    And the user enters "<Filtered Subject>" into "fine filter subject search box" on "Btris/Portal" page
#    And the user waits for 3 seconds
#    #click on run report button.
#    And the user clicks on "run report button" element on "Btris/Portal" page
#    #Verify report page.
#    And the user must see "Laboratory Results Preview - Standard" text in "laboratory and procedure report page" field on "Btris/Portal" page
#    #Verify and validate the report display and click on the the image to view.
#    And the user remembers the value of "laboratory results" field into "Loaded Laboratory Report" on "Btris/Portal" page
#    #click on the open report in another tab button.
#    And the user clicks on "open results in new tab button" element on "Btris/Portal" page
#    And the switch to new tab page
#    And the user remembers the value of "laboratory results" field into "Loaded Laboratory Report" on "Btris/Portal" page
#    And the user must see "Laboratory Results Preview - Standard" text in "laboratory report page" field on "Btris/Portal" page
#    And the return to main page
#    And the user logged out of the system
#
#    Examples:
#      | Subject       | User_Name   | Filtered Subject | Cluster Search Data | Cluster Item   | Cluster Group          |
#      | BTRIS-TEST-03 | btris_test2 | NIHCCTEST        | Sodium              | Sodium (Blood) | Sodium (Blood - Other) |


  @Laboratory_Cluster_Search.2

  Scenario Outline: 1.2 Items names are matched by case-insensitive contains.
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
    And the user clicks on "labs: add labs button" element on "Btris/Portal" page
    Then the user verify if cluster search is added to the current executing environment
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Cluster Search Data>" into "cluster search input search box" on "Cluster/Search" page
    #Click the search button.
    And the user clicks on "red search: search button" element on "Btris/Portal" page
    Then the user verify that the lab cluster has no error
    And the user remembers the value of "cluster: keto search results" field into "Search results retrieved" on "Cluster/Search" page
    Then the user verify if the search results for KETO matches the actual results
    And the user clicks on "red search: done button" element on "Btris/Portal" page
    And the user must see "Laboratory Criteria" text in "btris: laboratory filter report page" field on "Btris/Portal" page
    And the user logged out of the system

    Examples:
      | User_Name   | Cluster Search Data |
      | btris_test2 | KETO                |


  @Laboratory_Cluster_Search.3

  Scenario Outline: 1.3 Item synonyms are matched by case-insensitive exact match.
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
    And the user clicks on "labs: add labs button" element on "Btris/Portal" page
    Then the user verify if cluster search is added to the current executing environment
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Cluster Search Data>" into "cluster search input search box" on "Cluster/Search" page
    #Click the search button.
    And the user clicks on "red search: search button" element on "Btris/Portal" page
    Then the user verify that the lab cluster has no error
    And the user remembers the value of "cluster: keto search results" field into "Search results retrieved" on "Cluster/Search" page
    Then the user verify if the search results for SED RATE matches the "<Actual Search results>"
    Then the user verify if the search results for "<Cluster Search Data>" matches the "<Actual Search results>"
    And the user enters "<Cluster Search Data1>" into "cluster search input search box" on "Cluster/Search" page
    And the user clicks on "red search: search button" element on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user remembers the value of "cluster: search result status" field into "Search Result Status" on "Cluster/Search" page
    And the user must see "No search results retrieved." text in "cluster: search result status" field on "Cluster/Search" page
    And the user clicks on "red search: done button" element on "Btris/Portal" page
    And the user must see "Laboratory Criteria" text in "btris: laboratory filter report page" field on "Btris/Portal" page

    And the user logged out of the system

    Examples:
      | User_Name   | Cluster Search Data | Actual Search results | Cluster Search Data1 |
      | btris_test2 | SED RATE            | ESR (Blood)           | SED RAT              |


  @Laboratory_Cluster_Search.4

  Scenario Outline: 1.4 Search for cluster that is in no groups.
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
    And the user clicks on "labs: add labs button" element on "Btris/Portal" page
    Then the user verify if cluster search is added to the current executing environment
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Cluster Search Data>" into "cluster search input search box" on "Cluster/Search" page
    And the user clicks on "red search: search button" element on "Btris/Portal" page
    Then the user verify that the lab cluster has no error
    And the user remembers the value of "cluster: search result/s" field into "Search Result Output" on "Cluster/Search" page
    And the user must see "<Actual Search result>" text in "cluster: search result/s" field on "Cluster/Search" page
    Then the user verify if the search results for "<Cluster Search Data>" matches the "<Actual Search result>"
    And the user clicks on "red search: done button" element on "Btris/Portal" page
    And the user must see "Laboratory Criteria" text in "btris: laboratory filter report page" field on "Btris/Portal" page

    And the user logged out of the system

    Examples:
      | User_Name   | Cluster Search Data                | Actual Search result               |
      | btris_test2 | phadiatop (allergy screen) (blood) | Phadiatop (Allergy Screen) (Blood) |


  @Laboratory_Cluster_Search.5

  Scenario Outline: 1.5 Search for cluster in panel group.
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
    And the user clicks on "labs: add labs button" element on "Btris/Portal" page
    Then the user verify if cluster search is added to the current executing environment
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Cluster Search Data>" into "cluster search input search box" on "Cluster/Search" page
    And the user clicks on "red search: search button" element on "Btris/Portal" page
    Then the user verify that the lab cluster has no error
    And the user remembers the value of "cluster: search result/s" field into "Search Result Output" on "Cluster/Search" page
    And the user must see "<Actual Search result>" text in "cluster: search result/s" field on "Cluster/Search" page
    Then the user verify if the search results for "<Cluster Search Data>" matches the "<Actual Search result>"
    And the user clicks on "red search: done button" element on "Btris/Portal" page
    And the user must see "Laboratory Criteria" text in "btris: laboratory filter report page" field on "Btris/Portal" page

    And the user logged out of the system

    Examples:
      | User_Name   | Cluster Search Data             | Actual Search result            |
      | btris_test2 | nephrology consult (urinalysis) | Nephrology Consult (Urinalysis) |


  @Laboratory_Cluster_Search.6

  Scenario Outline: 1.6 Search for cluster in presentation group.
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
    And the user clicks on "labs: add labs button" element on "Btris/Portal" page
    Then the user verify if cluster search is added to the current executing environment
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Cluster Search Data>" into "cluster search input search box" on "Cluster/Search" page
    And the user clicks on "red search: search button" element on "Btris/Portal" page
    Then the user verify that the lab cluster has no error
    And the user remembers the value of "cluster: search result/s" field into "Search Result Output" on "Cluster/Search" page
    And the user must see "<Actual Search result>" text in "cluster: search result/s" field on "Cluster/Search" page
    Then the user verify if the search results for "<Cluster Search Data>" matches the "<Actual Search result>"
    And the user clicks on "red search: done button" element on "Btris/Portal" page
    And the user must see "Laboratory Criteria" text in "btris: laboratory filter report page" field on "Btris/Portal" page

    And the user logged out of the system

    Examples:
      | User_Name   | Cluster Search Data                 | Actual Search result      |
      | btris_test2 | Carboxyhemoglobin, Arterial (Blood) | Carboxyhemoglobin (Blood) |


  @Laboratory_Cluster_Search.7

  Scenario Outline: 1.7 Search for panel cluster group in super group.
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
    And the user clicks on "labs: add labs button" element on "Btris/Portal" page
    Then the user verify if cluster search is added to the current executing environment
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Cluster Search Data>" into "cluster search input search box" on "Cluster/Search" page
    And the user clicks on "red search: search button" element on "Btris/Portal" page
    Then the user verify that the lab cluster has no error
    And the user remembers the value of "cluster: search result/s" field into "Search Result Output" on "Cluster/Search" page
    And the user must see "<Actual Search result>" text in "cluster: search result/s" field on "Cluster/Search" page
    Then the user verify if the search results for "<Cluster Search Data>" matches the "<Actual Search result>"
    And the user clicks on "cluster group: expand search result icon" element on "Cluster/Search" page
    And the user remembers the value of "cluster: search result children" field into "Search Result Output" on "Cluster/Search" page
    Then the user verify if the cluster group for "<Cluster Search Data>" matches the Actual Group Children
    And the user clicks on "red search: done button" element on "Btris/Portal" page
    And the user must see "Laboratory Criteria" text in "btris: laboratory filter report page" field on "Btris/Portal" page
    And the user logged out of the system

    Examples:
      | User_Name   | Cluster Search Data                              | Actual Search result                             |
      | btris_test2 | Lymphocyte Phenotyping - DHR Assay - CGD (Blood) | Lymphocyte Phenotyping - DHR Assay - CGD (Blood) |


  @Laboratory_Cluster_Search.8

  Scenario Outline: 1.8 Search for panel cluster group not in a super group.
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
    And the user clicks on "labs: add labs button" element on "Btris/Portal" page
    Then the user verify if cluster search is added to the current executing environment
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Cluster Search Term>" into "cluster search input search box" on "Cluster/Search" page
    And the user clicks on "red search: search button" element on "Btris/Portal" page
    Then the user verify that the lab cluster has no error
    And the user remembers the value of "cluster: search result/s" field into "Search Result Output" on "Cluster/Search" page
    And the user must see "<Actual Search result>" text in "cluster: search result/s" field on "Cluster/Search" page
    Then the user verify if the search results for "<Cluster Search Term>" matches the "<Actual Search result>"
    And the user clicks on "cluster panel group expand icon" element on "Cluster/Search" page
    And the user remembers the value of "cluster: search result children" field into "Search Result Output" on "Cluster/Search" page
    Then the user verify if the cluster panel group "<Cluster Search Term>" matches the Actual Group Children
    And the user clicks on "red search: done button" element on "Btris/Portal" page
    And the user must see "Laboratory Criteria" text in "btris: laboratory filter report page" field on "Btris/Portal" page
    And the user logged out of the system

    Examples:
      | User_Name   | Cluster Search Term                        | Actual Search result                       |
      | btris_test2 | Cytomegalovirus (CMV) Ab IgG , IgM (Blood) | Cytomegalovirus (CMV) Ab IgG , IgM (Blood) |


  @Laboratory_Cluster_Search.9

  Scenario Outline: 1.9 Search for presentation cluster group not in a super group.
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
    And the user clicks on "labs: add labs button" element on "Btris/Portal" page
    Then the user verify if cluster search is added to the current executing environment
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Cluster Search Term>" into "cluster search input search box" on "Cluster/Search" page
    And the user clicks on "red search: search button" element on "Btris/Portal" page
    Then the user verify that the lab cluster has no error
    And the user remembers the value of "cluster: search result/s" field into "Search Result Output" on "Cluster/Search" page
    And the user must see "<Actual Search result>" text in "cluster: search result/s" field on "Cluster/Search" page
    Then the user verify if the search results for "<Cluster Search Term>" matches the "<Actual Search result>"
    And the user clicks on "cluster panel group expand icon" element on "Cluster/Search" page
    And the user remembers the value of "cluster: search result children" field into "Search Result Output" on "Cluster/Search" page
    Then the user verify if the presentation cluster panel group "<Cluster Search Term>" matches the Actual Group Children
    And the user clicks on "red search: done button" element on "Btris/Portal" page
    And the user must see "Laboratory Criteria" text in "btris: laboratory filter report page" field on "Btris/Portal" page
    And the user logged out of the system

    Examples:
      | User_Name   | Cluster Search Term | Actual Search result |
      | btris_test2 | HDL (Blood - Other) | HDL (Blood - Other)  |


  @Laboratory_Cluster_Search.10

  Scenario Outline: 1.10 Search for super group.
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
    And the user clicks on "labs: add labs button" element on "Btris/Portal" page
    Then the user verify if cluster search is added to the current executing environment
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Cluster Search Term>" into "cluster search input search box" on "Cluster/Search" page
    And the user clicks on "red search: search button" element on "Btris/Portal" page
    Then the user verify that the lab cluster has no error
    And the user remembers the value of "cluster: search result/s" field into "Search Result Output" on "Cluster/Search" page
    And the user must see "<First Search result>" text in "cluster: search result/s" field on "Cluster/Search" page
    Then the user verify that the super group "<Cluster Search Term>" results matches the Actual result
    And the user clicks on "pagination button #2" element on "Cluster/Search" page
    And the user remembers the value of "cluster: search result/s" field into "Search Result Output" on "Cluster/Search" page
    Then the user verify that the super group "<Cluster Search Term>" second results matches the Actual result
    And the user clicks on "pagination button #1" element on "Cluster/Search" page
    And the user must see "<First Search result>" text in "cluster: search result/s" field on "Cluster/Search" page
    And the user clicks on "expand icon for super group result" element on "Cluster/Search" page
    And the user remembers the value of "cluster: search result children" field into "Search Result Output" on "Cluster/Search" page
    Then the user verify if the super group "<Cluster Search Term>" results matches the Actual Group Children
    And the user clicks on "expand icon for lymphocyte phenotyping  - lad-1 blood" element on "Cluster/Search" page
    And the user remembers the value of "children for lymphocyte phenotyping  - lad-1 blood" field into "Search Result Output" on "Cluster/Search" page
    Then the user verify if the cluster group Children for "<Third Level Super-Group>" matches the Actual Group Children
    And the user clicks on "red search: done button" element on "Btris/Portal" page
    And the user must see "Laboratory Criteria" text in "btris: laboratory filter report page" field on "Btris/Portal" page
    And the user logged out of the system

    Examples:
      | User_Name   | Cluster Search Term    | First Search result    | Third Level Super-Group                           |
      | btris_test2 | lymphocyte phenotyping | Lymphocyte Phenotyping | Lymphocyte Phenotyping - Cutaneous T Cell (Blood) |


  @Laboratory_Cluster_Search.11

  Scenario Outline: 1.11 Top level sorting is by specimen type level, specimen type name, sequence, item type.
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
    And the user clicks on "labs: add labs button" element on "Btris/Portal" page
    Then the user verify if cluster search is added to the current executing environment
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Cluster Search Term>" into "cluster search input search box" on "Cluster/Search" page
    And the user clicks on "red search: search button" element on "Btris/Portal" page
    Then the user verify that the lab cluster has no error
    And the user remembers the value of "results retrieved for icon" field into "First Sorted Specimen of Iron (Blood)" on "Cluster/Search" page
    And the user must see "<First Specimen Sort result>" text in "results retrieved for icon" field on "Cluster/Search" page
    Then the user verify if the "<Cluster Search Term>" sorting matches the Actual top level sorting
    And the user clicks on "expand results retrieved for icon" element on "Cluster/Search" page
    And the user remembers the value of "cluster: search result children" field into "Search Result Output" on "Cluster/Search" page
    Then the user verify if the specimen type level "<Cluster Search Term>" matches the Actual Group Children
    And the user clicks on "red search: done button" element on "Btris/Portal" page
    And the user must see "Laboratory Criteria" text in "btris: laboratory filter report page" field on "Btris/Portal" page
    And the user logged out of the system

    Examples:
      | User_Name   | Cluster Search Term | First Specimen Sort result |
      | btris_test2 | iron                | Iron (Blood)               |

  @Laboratory_Cluster_Search.12

  Scenario Outline: 1.12 Search for presentation cluster group for Coronavirus-SARS.
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
    And the user clicks on "labs: add labs button" element on "Btris/Portal" page
    Then the user verify if cluster search is added to the current executing environment
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Cluster Search Term>" into "cluster search input search box" on "Cluster/Search" page
    And the user clicks on "red search: search button" element on "Btris/Portal" page
    Then the user verify that the lab cluster has no error
    And the user remembers the value of "cluster: search result/s" field into "Search Result Output" on "Cluster/Search" page
    And the user must see "<Actual Search result>" text in "cluster: search result/s" field on "Cluster/Search" page
    Then the user verify if the search results for "<Cluster Search Term>" matches the "<Actual Search result>"
    And the user clicks on "cluster panel group expand icon" element on "Cluster/Search" page
    And the user waits for 2 seconds
    And the user remembers the value of "cluster: search result children" field into "Search Result Output" on "Cluster/Search" page
    Then the user verify if the presentation cluster panel group for SARS "<Cluster Search Term>" matches the Actual Group Children
    And the user clicks on "red search: done button" element on "Btris/Portal" page
    And the user must see "Laboratory Criteria" text in "btris: laboratory filter report page" field on "Btris/Portal" page
    And the user logged out of the system

       Examples:
      | User_Name   | Cluster Search Term | Actual Search result                             |
      | btris_test2 | Coronavirus sars    | Coronavirus SARS-CoV-2 (Multiple Specimen Types) |

  @Laboratory_Cluster_Search.13

  Scenario Outline: 1.13 Search for cluster groups for Coronavirus-SARS.
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
    And the user clicks on "labs: add labs button" element on "Btris/Portal" page
    Then the user verify if cluster search is added to the current executing environment
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Cluster Search Term>" into "cluster search input search box" on "Cluster/Search" page
    And the user clicks on "red search: search button" element on "Btris/Portal" page
    Then the user verify that the lab cluster has no error
    And the user remembers the value of "cluster: search result/s" field into "Search Result Output" on "Cluster/Search" page
    And the user must see "<Actual Search result>" text in "cluster: search result/s" field on "Cluster/Search" page

    Then the user verify if the cluster panel group for SARS "<Cluster Search Term>" matches the Actual Group Children

    And the user clicks on "red search: done button" element on "Btris/Portal" page
    And the user must see "Laboratory Criteria" text in "btris: laboratory filter report page" field on "Btris/Portal" page
    And the user logged out of the system

    Examples:
      | User_Name   | Cluster Search Term | Actual Search result                             |
      | btris_test2 | Coronavirus    | Coronavirus SARS-CoV-2 (Multiple Specimen Types) |
