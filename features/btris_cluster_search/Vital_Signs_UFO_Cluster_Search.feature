@BTRIS_Quick_Smoke_Test
@VitalSigns_Cluster_Search_Test
Feature: BTRIS Vital Signs (UFO) Cluster Search Report



  @Vital_Signs_Cluster_Search_1.0

  Scenario Outline: 1.0 Items names are matched by case-insensitive contains.
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
    And the user clicks on "btris: vital signs test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Vital Signs Criteria" text in "btris: vital signs test page" field on "Btris/Portal" page
    And the user clicks on "add vital signs button" element on "Cluster/Search" page
    Then the user verify if cluster search "<Vital Signs UFO>" is added to the current executing environment
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Cluster Search Data>" into "cluster search input search box" on "Cluster/Search" page
    #Click the search button.
    And the user clicks on "add vital signs search button" element on "Cluster/Search" page
    Then the user verify that the Vital Signs cluster has no error
    And the user remembers the value of "cluster: temperature term search results" field into "Search results retrieved" on "Cluster/Search" page
    Then the user verify if the vital signs search results for "<Cluster Search Data>" matches the actual results
    And the user clicks on "red search: done button" element on "Btris/Portal" page
    And the user must see "Vital Signs Criteria" text in "btris: vital signs test page" field on "Btris/Portal" page
    And the user logged out of the system

    Examples:
      | User_Name   | Cluster Search Data | Vital Signs UFO |
      | btris_test2 | temperature         | Add Vital Signs |


  @Vital_Signs_Cluster_Search_1.2

  Scenario Outline: 1.2 Item synonyms are matched by case-insensitive exact match.
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
    And the user clicks on "btris: vital signs test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Vital Signs Criteria" text in "btris: vital signs test page" field on "Btris/Portal" page
    And the user clicks on "add vital signs button" element on "Cluster/Search" page
    Then the user verify if cluster search "<Vital Signs UFO>" is added to the current executing environment
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Cluster Search Data>" into "cluster search input search box" on "Cluster/Search" page
    #Click the search button.
    And the user clicks on "red search: search button" element on "Btris/Portal" page
    Then the user verify that the Vital Signs cluster has no error
    And the user remembers the value of "cluster result" field into "Search results retrieved" on "Cluster/Search" page
    Then the user verify if the search vital signs results for "<Cluster Search Data>" matches the "<Actual Search results>"
    And the user enters "<Cluster Search Data1>" into "cluster search input search box" on "Cluster/Search" page
    And the user clicks on "red search: search button" element on "Btris/Portal" page
    And the user waits for 2 seconds
    And the user remembers the value of "cluster: search result status" field into "Search Result Status" on "Cluster/Search" page
    And the user must see "No search results retrieved." text in "cluster: search result status" field on "Cluster/Search" page
    And the user clicks on "red search: done button" element on "Btris/Portal" page
    And the user must see "Vital Signs Criteria" text in "btris: vital signs test page" field on "Btris/Portal" page
    And the user logged out of the system

    Examples:
      | User_Name   | Cluster Search Data | Actual Search results                         | Cluster Search Data1 | Vital Signs UFO |
      | btris_test2 | Behavioral Health:  | Behavioral Health: Restraint Vital Signs Note | Care Rad             | Add Vital Signs |


  @Vital_Signs_Cluster_Search_1.3

  Scenario Outline: 1.3 Search for cluster that is in no groups.
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
    And the user clicks on "btris: vital signs test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Vital Signs Criteria" text in "btris: vital signs test page" field on "Btris/Portal" page
    And the user clicks on "add vital signs button" element on "Cluster/Search" page
    Then the user verify if cluster search "<Vital Signs UFO>" is added to the current executing environment
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Cluster Search Data>" into "cluster search input search box" on "Cluster/Search" page
    #Click the search button.
    And the user clicks on "red search: search button" element on "Btris/Portal" page
    Then the user verify that the Vital Signs cluster has no error
    And the user remembers the value of "cluster result" field into "Search results retrieved" on "Cluster/Search" page
    Then the user verify if the search vital signs results for "<Cluster Search Data>" matches the "<Actual Search results>"
    And the user clicks on "red search: done button" element on "Btris/Portal" page
    And the user must see "Vital Signs Criteria" text in "btris: vital signs test page" field on "Btris/Portal" page

    And the user logged out of the system

    Examples:
      | User_Name   | Cluster Search Data | Actual Search results                         | Vital Signs UFO |
      | btris_test2 | Behavioral Health:  | Behavioral Health: Restraint Vital Signs Note | Add Vital Signs |


  @Vital_Signs_Cluster_Search_1.4

  Scenario Outline: 1.4 Search for cluster in panel group.
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
    And the user clicks on "btris: vital signs test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Vital Signs Criteria" text in "btris: vital signs test page" field on "Btris/Portal" page
    And the user clicks on "add vital signs button" element on "Cluster/Search" page
    Then the user verify if cluster search "<Vital Signs UFO>" is added to the current executing environment
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Cluster Search Data>" into "cluster search input search box" on "Cluster/Search" page
    #Click the search button.
    And the user clicks on "red search: search button" element on "Btris/Portal" page
    Then the user verify that the Vital Signs cluster has no error
    And the user remembers the value of "cluster result" field into "Search results retrieved" on "Cluster/Search" page
    Then the user verify if the search term results for "<Cluster Search Data>" matches the actual results
    And the user clicks on "red search: done button" element on "Btris/Portal" page
    And the user must see "Vital Signs Criteria" text in "btris: vital signs test page" field on "Btris/Portal" page

    And the user logged out of the system

    Examples:
      | User_Name   | Cluster Search Data | Vital Signs UFO |
      | btris_test2 | Girth, Abdominal    | Add Vital Signs |


  @Vital_Signs_Cluster_Search_1.5

  Scenario Outline: 1.5 Search for cluster in presentation group.
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
    And the user clicks on "btris: vital signs test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Vital Signs Criteria" text in "btris: vital signs test page" field on "Btris/Portal" page
    And the user clicks on "add vital signs button" element on "Cluster/Search" page
    Then the user verify if cluster search "<Vital Signs UFO>" is added to the current executing environment
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Cluster Search Data>" into "cluster search input search box" on "Cluster/Search" page
    #Click the search button.
    And the user clicks on "red search: search button" element on "Btris/Portal" page
    Then the user verify that the Vital Signs cluster has no error
    And the user remembers the value of "cluster: search result/s" field into "Search Result Output" on "Cluster/Search" page
    And the user must see "<Actual Search result>" text in "cluster: search result/s" field on "Cluster/Search" page
    Then the user verify if the search results for "<Cluster Search Data>" matches the "<Actual Search result>"
    And the user clicks on "cluster group: expand search result icon" element on "Cluster/Search" page
    And the user remembers the value of "cluster: search result children" field into "Search Result Output" on "Cluster/Search" page
    And the user must see "<Cluster Search Data>" text in "respiratory depth" field on "Cluster/Search" page
    And the user clicks on "red search: done button" element on "Btris/Portal" page
    And the user must see "Vital Signs Criteria" text in "btris: vital signs test page" field on "Btris/Portal" page

    And the user logged out of the system

    Examples:
      | User_Name   | Cluster Search Data | Actual Search result | Vital Signs UFO |
      | btris_test2 | Respiratory Depth   | Respiration - Other  | Add Vital Signs |


  @Vital_Signs_Cluster_Search_1.6

  Scenario Outline: 1.6 Search for panel cluster group in super group.
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
    And the user clicks on "btris: vital signs test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Vital Signs Criteria" text in "btris: vital signs test page" field on "Btris/Portal" page
    And the user clicks on "add vital signs button" element on "Cluster/Search" page
    Then the user verify if cluster search "<Vital Signs UFO>" is added to the current executing environment
    #Enter search criteria in the red search keyword text box.
    And the user enters "<Cluster Search Data>" into "cluster search input search box" on "Cluster/Search" page
    #Click the search button.
    And the user clicks on "red search: search button" element on "Btris/Portal" page
    Then the user verify that the Vital Signs cluster has no error
    And the user remembers the value of "cluster result" field into "Search Result Output" on "Cluster/Search" page
    And the user must see "<Actual Search result>" text in "cluster: search term results" field on "Cluster/Search" page
    Then the user verify if the search results for "<Cluster Search Data>" matches the "<Actual Search result>"
    And the user clicks on "cluster group: expand search result icon" element on "Cluster/Search" page
    And the user waits for 2 seconds
    And the user remembers the value of "cluster: search result children" field into "Search Result Output" on "Cluster/Search" page
    Then the user verify if the cluster group term "<Cluster Search Data>" results matches the Actual Group Children
    And the user clicks on "red search: done button" element on "Btris/Portal" page
    And the user must see "Vital Signs Criteria" text in "btris: vital signs test page" field on "Btris/Portal" page

    And the user logged out of the system

    Examples:
      | User_Name   | Cluster Search Data | Actual Search result | Vital Signs UFO |
      | btris_test2 | temperature - other | Temperature - Other  | Add Vital Signs |


  @Vital_Signs_Cluster_Search_1.7

  Scenario Outline: 1.7 Search for panel cluster group not in a super group.
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
    And the user clicks on "btris: vital signs test" element on "Btris/Portal" page
    #Click on the create new report button.
    And the user clicks on "btris: create new report button" element on "Btris/Portal" page
    #verify the select report page.
    And the user must see "Vital Signs Criteria" text in "btris: vital signs test page" field on "Btris/Portal" page
    And the user clicks on "add vital signs button" element on "Cluster/Search" page
    Then the user verify if cluster search "<Vital Signs UFO>" is added to the current executing environment
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
    Then the user verify if the vital signs cluster panel group "<Cluster Search Term>" matches the Actual Group Children
    And the user clicks on "red search: done button" element on "Btris/Portal" page
    And the user must see "Vital Signs Criteria" text in "btris: vital signs test page" field on "Btris/Portal" page
    And the user logged out of the system

    Examples:
      | User_Name   | Cluster Search Term | Actual Search result | Vital Signs UFO |
      | btris_test2 | BSA - Other         | BSA - Other          | Add Vital Signs |


