def map_btris_portal
  @page_objects['btris_portal'] =


      {
          #Export librarian, adding a country.
          'btris home: landing page' => "xpath^^.//*[contains(@class, 'login-to-btris__heading')]",
          #'btris home: login button'                         =>"xpath^^.//*[contains(@class, 'btn round btn-lg my-1 mx-1 learn-more-button')]",
          'btris: login button' => "xpath^^.//*[@class='btn round btn-lg btn-secondary'][contains(text(), 'Log In')]",
          'btris: user name' => "xpath^^.//*[@id='USER']",
          'btris: password' => "xpath^^.//*[@id='PASSWORD']",
          'btris: login to dashboard button' => "xpath^^.//*[@onclick='return submitForm(1);']",
          'btris: accept button' => "xpath^^.//*[contains(@data-test, 'accept-conditions-of-use-button')]",
          'btris: logout drop down' => "xpath^^.//*[@id='nav-user-dropdown']",
          'btris: logout' => "xpath^^.//*[contains(@data-test, 'nav-user-dropdown-logout')]",
          'btris: accept page' => "xpath^^.//*[contains(text(), 'Conditions of Use and Code of Conduct')]",
          'btris: active protocol button' => "xpath^^.//*[contains(@data-test, 'launch-active-protocols-button')]",
          'run report top button' => "xpath^^.//*[@class='btn round btn-lg btn-primary'][@data-test='criteria-next-button-top']",
          'btris: radiology test' => "xpath^^.//*[contains(@data-test, '8-radio-value')]//*[contains(text(), 'Radiology')]",
          'btris: create new report button' => "xpath^^.//*[contains(@class, 'btn round btn-lg btn-primary')][contains(text(), 'Create New Repor')]",
          'btris: radiology filter report page' => "xpath^^.//*[contains(text(), 'Radiology Criteria')]",
          'btris: select subject button' => "xpath^^.//*[contains(@data-test, 'criteria-next-button-top')]",
          'fine protocol and subject search box' => "xpath^^.//*[@id='pcsl-search-field']",
          'fine filter subject search box' => "xpath^^.//*[(@id='subject-search-field')]",
          'run report button' => "xpath^^.//*[@class='btn round btn-lg btn-primary'][@data-test='run-report-button']",
          'radiology report page' => "xpath^^.//*[contains(text(), 'Radiology Results Preview -')]",
          'download full report button' => "xpath^^.//*[contains(@data-test, 'download-results-button')]",
          'check all button' => "xpath^^.//*[contains(@data-test, 'select-all-subject-lists-button')]",
          'radiology image display' => "xpath^^.//*[@id='mainTab-0-tabCaptionPlace']",
          'demographic data check box' => "xpath^^.//*[contains(@for, 'includeDemographics-checkbox')]",
          'open results in new tab button' => "xpath^^.//*[@data-test='open-in-new-window-button']",
          'protocol check button' => "xpath^^.//*[@class='custom-control custom-checkbox']",
          'edited meds protocol check button' => "xpath^^.//*[@data-test='protocol-checkbox']",
          'run admin report button' => "xpath^^.//*[contains(@data-test, 'criteria-next-button-top')]",
          'brtis logo img' => "xpath^^.//*[@style='margin: 0px; background: #0e0e0e; height: 100%']",
          'echocardiogram test selected' => "xpath^^//*[@id='red-quick-pick__autocomplete-listbox-2105076']",
          'upload list error' => "xpath^^.//*[@class='form-errors__error-list']",
          'search term list table' => "xpath^^.//*[@class='table search-term-list-table hover-row-highlight floatThead-table']//*[contains(text(), 'Search Term Lists')]",
          'preview header' => "xpath^^.//*[(@class='col-lg-6')]/h2",
          'custom list header' => "xpath^^.//*[@class='clm-header__title'][contains(text(), 'Custom Lists')]",
          'reference lists table' => "xpath^^.//*[@class='table reference-list-table hover-row-highlight floatThead-table']//*[contains(text(), 'Reference Lists')]",
          'reference list remove confirmation' => "xpath^^.//*[contains(text(), 'Reference list removed')]",
          'search term list remove confirmation' => "xpath^^.//*[@class='noty_body']",
          'results table header' => "xpath^^.//*[contains(text(), 'Protocol Number')]",
          'results table column header' => "xpath^^//div[2]/div/div/div/table/thead/tr/th/div/span",
          'medication report: top therapeutic category' => "xpath^^//*/div[2]/div/div/div/table/thead/tr/th[5]/div/span",
          'medication report: top therapeutic category data' => "xpath^^.//*[@data-test='results-preview-table']/tbody//td[5]",

          'medication report: therapeutic category' => "xpath^^//*/div[2]/div/div/div/table/thead/tr/th[6]/div/span",
          'medication report: therapeutic category data' => "xpath^^.//*[@data-test='results-preview-table']/tbody//td[6]",
          'medication report: non formulary info' => "xpath^^//*/div[2]/div/div/div/table/thead/tr/th[7]/div/span",
          'medication report: non formulary info data' => "xpath^^.//*[@data-test='results-preview-table']/tbody//td[7]",






          #Laboratory Test.
          'laboratory test' => "xpath^^.//*[@data-test='4-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'btris: laboratory filter report page' => "xpath^^.//*[contains(text(), 'Laboratory Criteria')]",
          'btris: bottom select button' => "xpath^^.//*[contains(@data-test, 'criteria-next-button-bottom')]",
          'laboratory report page' => "xpath^^.//*[contains(text(), 'Laboratory Results Preview -')]",
          'add lab button' => "xpath^^.//*[@data-test= 'add-cluster-search-terms-button']",
          'add lab search pop-up' => "xpath^^.//*[@id='__btris-modal-title__']",
          'enter search string text-box' => "xpath^^.//*[@data-test= 'cluster-search-keywords-input']",
          'add lab search button' => "xpath^^.//*[@data-test= 'cluster-search-search-button']",
          'add lab search results' => "xpath^^.//*[@class='jstree-anchor']",
          'results 1' => "xpath^^.//*[@id='E53_anchor']",
          'results 2' => "xpath^^.//*[@id='E49_anchor']",
          'results 3' => "xpath^^.//*[@id='E12_anchor']",
          'results 4' => "xpath^^.//*[@id='E13_anchor']",
          'results 5' => "xpath^^.//*[@id='E6203_anchor']",
          'results 6' => "xpath^^.//*[@id='E15_anchor']",
          'add lab done button' => "xpath^^.//*[@data-test= 'red-search-lower-done-button']",
          'added lab lists' => "xpath^^.//*[@class='col-lg-12']",
          'save as custom lab list button' => "xpath^^.//*[@data-test='create-search-term-list-button']",
          'save as custom list dialog box' => "xpath^^//*[@id='__btris-modal-title__']",
          'list name text-box' => "xpath^^//*[@id='save-custom-list-name-field']",
          'save button' => "xpath^^.//*[@class='btn round btn-lg btn-primary'][contains(text(), 'Save')]",
          'overwrite save button' => "xpath^^//*[@id='modal-target']/div/div[3]/div/div/div/div[2]/div/form/div[5]/div[3]/button",

          'save list feedback' => "xpath^^.//*[@class='noty_body']",
          'load custom lab list' => "xpath^^.//*[@data-test='cluster-picker-select-list']",

          'save lab custom list error display' => "xpath^^.//*[@class='form-errors__error-list']/li",
          'overwrite existing list check-box' => "xpath^^.//*[@for='save-custom-list-overwrite-checkbox']",
          'saved custom lab list' => "xpath^^.//*[contains(text(), 'New Test Lab Saved List')]",
          'search lab cluster pop-up' => "xpath^^.//*[@class='modal-title']",
          'reference list name display' => "xpath^^.//*[(@class='empty-message')][contains(text(), 'No reference lists found')]",
          'search term list name display' => "xpath^^.//*[(@class='empty-message')][contains(text(), 'No search term lists found')]",
          'uncheck all' => "xpath^^.//*[@data-test='select-all-subjects-button']",
          'check subject' => "xpath^^.//*[@class='table subject-table hover-row-highlight']/tbody/tr[2]/td[1]/div",




           #Radiology
          'link to radiology image' => "xpath^^.//*[@data-test='results-preview-table']/tbody/tr[1]/td[8]/a",
          'radiology image' => "xpath^^.//*[@class='patientParamName'][contains(text(), 'Date of Birth:')]",
          'radiology admin link to pdf' => "xpath^^.//*[@data-test='results-preview-table']/tbody/tr[1]/td[6]/a",











          #Dianostic and procedure.
          'diagnosis and procedure test' => "xpath^^.//*[contains(@data-test, '19-radio-value')]",
          'diagnosis and procedure report page' => "xpath^^.//*[contains(text(), 'Diagnosis & Procedure Results Preview -')]",
          'btris: diagnosis and procedure filter report page' => "xpath^^.//*[contains(text(), 'Diagnosis & Procedure Criteria')]",
          'btris: diagnosis and procedure select button' => "xpath^^.//*[@id='app']/div/div[1]/div[2]/div[2]/div/div/div/div/form/div[1]/div[2]/div/div[2]/button",
          'observation type: select all' => "xpath^^.//*[@id='observationTypes-red-quick-pick-select-all']",
          'observation type: admit diagnosis' => "xpath^^.//*[contains(text(), 'Admit Diagnosis')]",
          'observation type: chief complaint' => "xpath^^.//*[contains(text(), 'Chief Complaint')]",
          'observation type: discharge diagnosis' => "xpath^^.//*[contains(text(), 'Discharge Diagnosis')]",
          'observation type: niaid problem' => "xpath^^.//*[contains(text(), 'NIAID Problem')]",
          'observation type: procedure' => "xpath^^.//*[contains(text(), 'Procedure')]",
          'observation type: rare disease' => "xpath^^.//*[contains(text(), 'Rare Disease')]",
          'observation type: volunteer diagnosis' => "xpath^^.//*[contains(text(), 'Volunteer Diagnosis')]",
          'bottom button: select subject' => "xpath^^.//*[@data-test='criteria-next-button-bottom']",
          #Red Search.
          'top nav: select report' => "xpath^^.//*[contains(text(), 'Select Subjects')]",
          'top nav: enter report criteria' => "xpath^^.//*[contains(text(), 'Enter Report Criteria')]",
          'labs: add labs button' => "xpath^^.//*[@data-test='add-cluster-search-terms-button']",
          'red search: keyword text box' => "xpath^^.//*[@data-test='red-search-keywords-input']",
          'red search: search type drop down' => "xpath^^.//*[@id='labs-red-term-search-type']",
          'red search: search button' => "xpath^^.//*[@data-test='cluster-search-search-button']",
          'red search: done button' => "xpath^^.//*[@data-test='red-search-lower-done-button']",
          'red search data' => "xpath^^.//*[@id='C2113492_anchor']",
          'run report' => "xpath^^.//*[@data-test='run-report-button']",
          'red search result' => "xpath^^.//*[@data-test='red-node red-node-E53']",
          'red search result1' => "xpath^^.//*[@id='G10023_anchor']",
          'red search result2' => "xpath^^.//*[@id='G10022_anchor']",
          'sodium presentation group' => "xpath^^//*[@id='G10023']/i",



          #Demographics report.
          'demographics test report' => "xpath^^.//*[@data-test='6-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'demographics report page' => "xpath^^.//*[contains(text(), 'Demographics Results Preview -')]",
          'demographics report table: subject name column' => "xpath^^.//*[contains(@class, 'colHeader')][contains(text(), 'Subject Name')]",
          'diagnosis report table: subject name column' => "xpath^^.//*[@class='relative']//*[contains(text(), 'Subject Name')]",
          'laboratory report table: subject name column' => "xpath^^.//*[contains(@class, 'colHeader')][contains(text(), 'Subject Name')]",
          'laboratory report table: subject name' => "xpath^^.//*[contains(@class, 'colHeader')][contains(text(), 'Subject Name')]",
          'laboratory and procedure report page' => "xpath^^.//*[contains(text(), 'Laboratory Results Preview -')]",
          'report table: collected data time column' => "xpath^^.//*[contains(@data-test, 'results-preview-table')]//*[contains(text(), 'Collected Date Time')]",
          'admin report table: subject name column' => "xpath^^.//*[contains(@class, 'colHeader')][contains(text(), 'Subject Name')]",
          'protocol verify count' => "xpath^^.//*[@data-test='protocol-consented-count']",

          'subject list' => "xpath^^.//*[@data-test='custom-subject-list-number']",
          'subject count' => "xpath^^.//*[@data-test='custom-subject-list-total-count']",
          'loaded terms on search term list table' => "xpath^^.//*[@class='table search-term-list-table hover-row-highlight']/tbody/tr[1]/td[5]",




          'select all' => "xpath^^.//*[@class='custom-control custom-checkbox']",
          'irb inclusion' => "xpath^^.//*[@class='custom-control-description radio__label-text'][contains(text(), 'IRB Inclusion Enrollment')]",
          'scan pd document' => "xpath^^.//*[@class='custom-control-description checkbox__label-text'][contains(text(), '12-Lead Electrocardiogram, Document Image')]",
          'selected protocol' => "xpath^^.//*[@data-test='protocol-number']",
          'user name attribute' => "xpath^^.//*[@for='USER']",
          'admin reports' => "xpath^^.//*[@class='custom-control-description radio__label-text'][contains(text(), 'Radiology Administration')]",
          'reports results' => "xpath^^.//*[@data-test='results-preview-table']/tbody/tr[1]/td[3]",
          'radiology admin results' => "xpath^^.//*[@data-test='results-preview-table']/tbody/tr[1]/td[2]",
          'checkbox value' => "xpath^^.//*[@class='sr-only custom-control-description checkbox__label-text']",
          'clinical doc dv admin results' => "xpath^^.//*[@data-test='results-preview-table']/tbody/tr[1]/td[3]",
          'demographics results' => "xpath^^.//*[@data-test='results-preview-table']/tbody/tr[1]/td[3]",
          'diagnosis & procedure results' => "xpath^^.//*[@data-test='results-preview-table']/tbody/tr[1]/td[3]",
          'echocardiogram results' => "xpath^^.//*[@data-test='results-preview-table']/tbody/tr[1]/td[3]",
          'ekg results' => "xpath^^.//*[@data-test='results-preview-table']/tbody/tr[1]/td[3]",
          'laboratory results' => "xpath^^.//*[@data-test='results-preview-table']/tbody/tr[1]/td[2]",
          'medication results' => "xpath^^.//*[@data-test='results-preview-table']/tbody/tr[1]/td[3]",
          'microbiology results' => "xpath^^.//*[@data-test='results-preview-table']/tbody/tr[1]/td[3]",
          'niaaa assessment results' => "xpath^^.//*[@data-test='results-preview-table']/tbody/tr[1]/td[3]",
          'nichd/ctdb forms results' => "xpath^^.//*[@data-test='results-preview-table']/tbody/tr[1]/td[4]",
          'pulmonary function results' => "xpath^^.//*[@data-test='results-preview-table']/tbody/tr[1]/td[2]",
          'vital sign rl results' => "xpath^^.//*[@data-test='results-preview-table']/tbody/tr[1]/td[2]",
          'pathology rl results' => "xpath^^.//*[@data-test='results-preview-table']/tbody/tr[1]/td[2]",
          'radiology rl results' => "xpath^^.//*[@data-test='results-preview-table']/tbody/tr[1]/td[2]",
          'vital sign results' => "xpath^^.//*[@data-test='results-preview-table']/tbody/tr[1]/td[3]",
          'pathology results' => "xpath^^.//*[@data-test='results-preview-table']/tbody/tr[1]/td[3]",
          'pdf documents results' => "xpath^^.//*[@data-test='results-preview-table']/tbody/tr[1]/td[3]",
          'close report icon' => "xpath^^.//*[@class='report-tab__close-button']",
          'close button' => "xpath^^.//*[@class='btn round btn-lg btn-danger']",
          'admin reports nav' => "xpath^^.//*[@class='title title_center'][contains(text(), 'Admin Reports')]",
          'search term list sort 1' => "xpath^^.//*[@class='table search-term-list-table hover-row-highlight']/tbody/tr[1]/td[2]/h5",
          'search term list sort 2' => "xpath^^.//*[@class='table search-term-list-table hover-row-highlight']/tbody/tr[2]/td[2]/h5",
          'search term list sort 3' => "xpath^^.//*[@class='table search-term-list-table hover-row-highlight']/tbody/tr[3]/td[2]/h5",

          'reference list sort 1' => "xpath^^.//*[@class='table reference-list-table hover-row-highlight']/tbody/tr[1]/td[2]/h5",
          'reference list sort 2' => "xpath^^.//*[@class='table reference-list-table hover-row-highlight']/tbody/tr[2]/td[2]/h5",
          'reference list sort 3' => "xpath^^.//*[@class='table reference-list-table hover-row-highlight']/tbody/tr[3]/td[2]/h5",


          'radiology report results table' => "xpath^^.//*[contains(text(), 'Laboratory Results Preview -')]",
          #Assessment Report
          'btris: assessment report test' => "xpath^^.//*[@data-test='15-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'btris: assessment filter report page' => "xpath^^.//*[@class='prompts-header__heading']//*[contains(text(), 'NIAAA Assessment Report Criteria')]",
          'assessment report table: subject name column' => "xpath^^.//*[contains(@data-test, 'results-preview-table')]//*[contains(text(), 'Subject Name')]",
          'assessment report page' => "xpath^^.//*[contains(text(), 'NIAAA Assessment Report Results Preview -')]",
          'btris: assessment select subject button' => "xpath^^.//*[@id='app']/div/div[1]/div[2]/div[2]/div/div/div/div/form/div[1]/div[2]/div/div[2]/button",
          'select all assessment button' => "xpath^^.//*[@for='assessments-red-quick-pick-select-all']",
          'assessment protocol subject' => "xpath^^.//*[@id='app']/div/div[1]/div[2]/div[2]/div/div/div[1]/div/div/div[2]/div[2]/table/tbody/tr[1]/td[1]/div/labelb",
          'niaa assessment input field' => "xpath^^//*[@id='red-quick-pick__autocomplete']",
          'niaa assessment value' => "xpath^^//*[@id='red-quick-pick__autocomplete-listbox-C3167185']",
          'niaa assessment value selects' => "xpath^^//*[@id='red-quick-pick__autocomplete-listbox-C3167185'][contains(text(), 'Addiction Severity Index (NIAAA, ASM_ASI)')]",

          #Clinical Documents - Discrete Values
          'clinical documents: discrete values' => "xpath^^.//*[@data-test='9-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'btris: clinical documents: discrete values filter report page' => "xpath^^.//*[contains(text(), 'Clinical Documents - Discrete Values Criteria')]",
          'btris: top select subject button' => "xpath^^.//*[contains(@data-test, 'criteria-next-button-top')]",
          'clinical documents: discrete report page' => "xpath^^.//*[contains(text(), 'Clinical Documents - Discrete Values Results Preview - ')]",
          'labs: add clinical doc button' => "xpath^^.//*[contains(@data-test, 'add-red-terms-button')]",
          'red search for clinical doc' => "xpath^^.//*[@id='C114092_anchor'][contains(@data-test, 'red-node red-node-C114092')]",
          'red search: clinical doc search type drop down' => "xpath^^.//*[@id='clinicalDocuments-red-term-search-type']",
          'red search: clinical doc done button' => "xpath^^.//*[contains(@data-test, 'red-search-upper-done-button')]",
          'red search: clinical doc search button' => "xpath^^.//*[contains(@data-test, 'red-search-search-button')]",
          'red search: serial research' => "xpath^^.//*[@id='C2166735_anchor'][contains(@data-test, 'red-node red-node-C2166735')]",
          'red search: start with research' => "xpath^^.//*[@id='C2159770_anchor']",
          'red search: exact phrase research' => "xpath^^.//*[@id='C2166966_anchor']",
          'labs: add observation button' => "xpath^^.//*[contains(@data-test, 'add-red-terms-button')][contains(text(), 'Add Observations')]",
          'labs: search type drop down' => "xpath^^.//*[@id='clinicalDocumentDiscreteValues-red-term-search-type']",
          'red search clinical: contains phrase research' => "xpath^^.//*[@id='C2256100_anchor']",
          'red search clinical: contains any search for add observation' => "xpath^^.//*[contains(@data-test, 'red-node red-node-C2256100')]",
          'red search clinical: start with search for add observation' => "xpath^^.//*[@id='C118703_anchor']",


          #NICHD/CTDB Forms
          'nichd ctdb forms' => "xpath^^.//*[contains(@data-test, '1020-radio-value')]",
          'btris: nichd ctdb forms page' => "xpath^^.//*[@class='prompts-header__heading']//*[contains(text(), 'NICHD/CTDB Forms Criteria')]",
          'nichd ctdb select button' => "xpath^^.//*[@id='app']/div/div[1]/div[2]/div[2]/div/div/div/div/form/div[1]/div[2]/div/div[2]/button",
          'nichd ctdb forms report page' => "xpath^^.//*[contains(text(), 'NICHD/CTDB Forms Results Preview -')]",
          # PDF Documents
          'pdf documents' => "xpath^^.//*[@id='generalRpts']/div/ul/li[14]/div/label",
          'btris: pdf documents page' => "xpath^^.//*[@class='prompts-header__heading']//*[contains(text(), 'PDF Documents Criteria')]",
          'pdf documents select all button' => "xpath^^.//*[@for='pdfScannedDocuments-red-quick-pick-select-all']",
          'pdf documents select button' => "xpath^^.//*[@id='app']/div[2]/div[1]/div[2]/div[2]/div/div/div/div/form/div[1]/div[2]/div/div[2]/button",
          'pdf documents result page' => "xpath^^.//*[contains(text(), 'PDF Documents Results Preview -')]",
          'pdf documents search subject' => "xpath^^.//*[contains(text(), 'ABOU-ANTOUN, SAMI NASSR')]",
          'search subject s4' => "xpath^^.//*[contains(@data-test, 'results-preview-table')]//*[contains(text(), '00-C-0069')]",
          'search subject s2' => "xpath^^.//*[contains(@data-test, 'results-preview-table')]//*[contains(text(), 'NIHCCTEST, INNA NMN')]",
          'search subject pn' => "xpath^^.//*[contains(@data-test, 'results-preview-table')]//*[contains(text(), '00-C-0154')]",
          'search subject pn1' => "xpath^^.//*[contains(@data-test, 'results-preview-table')]/tbody/tr[1]/td[1]",
          'search subject pd1' => "xpath^^.//*[@data-test='results-preview-table']/tbody/tr[1]/td[1]",
          'search prod subject pd1' => "xpath^^.//*[contains(@data-test, 'results-preview-table')]//*[contains(text(), '00-C-0154')]",
          'pdf link' => "xpath^^.//*[@data-test='results-preview-table']/tbody/tr[1]/td[7]//a",
          'scanned pdf input field' => "xpath^^//*[@id='red-quick-pick__autocomplete']",
          'scanned pdf doc value' => "xpath^^//*[@class='auto-suggest-field__listbox-item'][contains(text(), 'Acupuncture Consult, Document Image')]",
          'scanned pdf list value' => "xpath^^//*[@id='red-quick-pick__autocomplete']",
          'scanned pdf doc value 2' => "xpath^^//*[@id='red-quick-pick__autocomplete-listbox-2159771']",
          'scanned pdf doc value 3' => "xpath^^//*[@id='red-quick-pick__autocomplete-listbox-524367151']",
          'scanned pdf doc value 4' => "xpath^^//*[@id='red-quick-pick__autocomplete-listbox-524367152']",


          'search subject s3' => "xpath^^.//*[contains(@data-test, 'results-preview-table')]//*[contains(text(), '00-C-0154')]",
          'pdf documents buttom select button' => "xpath^^.//*[@id='app']/div[2]/div[1]/div[2]/div[2]/div/div/div/div/form/div[2]/div/div[4]/div[2]/button",
          #Vital signs
          'btris: vital signs test' => "xpath^^.//*[@id='generalRpts']/div/ul/li[17]/div/label",
          'btris: vital signs test page' => "xpath^^.//*[@class='prompts-header__heading']//*[contains(text(), 'Vital Signs Criteria')]",
          'vital signs test select button' => "xpath^^.//*[@id='app']/div/div[1]/div[2]/div[2]/div/div/div/div/form/div[1]/div[2]/div/div[2]/button",
          'vital signs test result page' => "xpath^^.//*[contains(text(), 'Vital Signs Results Preview -')]",
          'vital signs test table: subject name column' => "xpath^^.//*/table/thead/tr/th[3]/div//*[contains(text(), 'Subject Name')]",
          'include demographic report radio button' => "xpath^^.//*[@for='includeDemographics-checkbox']",
          'vital sign bottom select button' => "xpath^^.//*[@id='app']/div/div[1]/div[2]/div[2]/div/div/div/div/form/div[2]/div/div[5]/div[2]/button",
          'report creation date' => "xpath^^.//*[@id='mainTab-0-SV_reportDate']",
          'add vital sign button' => "xpath^^.//*[@data-test= 'add-cluster-search-terms-button']",
          'add vital sign search pop-up' => "xpath^^.//*[@id='__btris-modal-title__']",
          'add vital sign search button' => "xpath^^.//*[@data-test= 'cluster-search-search-button']",
          'vital sign top search result' => "xpath^^.//*[@id= 'G30014_anchor']",
          'vital sign 2nd' => "xpath^^.//*[@id= 'E6794_anchor']",
          'vital sign 3nd' => "xpath^^.//*[@id= 'E7036_anchor']",
          'vital sign 4nd' => "xpath^^.//*[@id= 'E7041_anchor']",
          'saved custom lab list vs' => "xpath^^.//*[contains(text(), 'T - Vital Sign Ad Hoc Save')]",

          'link to tif file' => "xpath^^.//*[@data-test='results-preview-table']/tbody/tr[13]/td[7]/a[contains(text(), '.tif')]",





          #Medication Test
          'btris: medication test' => "xpath^^.//*[@data-test='18-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'btris: medication report page' => "xpath^^.//*[@class='prompts-header__heading']//*[contains(text(), 'Medication Report Criteria')]",
          'medication report page' => "xpath^^.//*[contains(text(), 'Medication Report Results Preview -')]",
          'medication admin drop down' => "xpath^^.//*[@id='report-output-format-select']",
          'medication order start date' => "xpath^^.//*[@id='orderDateRange-date-range-start-date']",
          'medication order end date' => "xpath^^.//*[@id='orderDateRange-date-range-end-date']",
          'medication admin start date' => "xpath^^.//*[@id='medicationStartDateRange-date-range-start-date']",
          'medication admin end date' => "xpath^^.//*[@id='medicationStartDateRange-date-range-end-date']",

          'cancel button' => "xpath^^//*[@class='btn round btn-lg btn-secondary'][contains(text(), 'Cancel')]",
          'load selected list button' => "xpath^^//*[@class='btn round btn-lg btn-primary'][contains(text(), 'Load Selected Lists')]",
          'medication list' => "xpath^^.//*[@id='select-custom-list-mutli-select']//*[contains(text(), 'T - Medication Template 01')]",

          'load custom list link' => "xpath^^.//*[@data-test='cluster-picker-select-list']",


          #Pulmonary Function Test Lab Report
          'btris: pulmonary test' => "xpath^^.//*[contains(@data-test, '13-radio-value')]",
          'btris: pulmonary report page' => "xpath^^.//*[@class='prompts-header__heading']//*[contains(text(), 'Pulmonary Function Test Lab Report Criteria')]",
          'pulmonary result report page' => "xpath^^.//*[contains(text(), 'Pulmonary Function Test Lab Report Results Preview -')]",
          'pulmonary: add pft test button' => "xpath^^.//*[contains(@data-test, 'add-red-terms-button')]",
          'pulmonary top nav: report criteria' => "xpath^^.//*[@class='btris-progress-bar-item__link router-link-exact-active router-link-active']",
          'pulmonary: add pft done button' => "xpath^^.//*[@data-test='red-search-lower-done-button']",
          'pft tests data' => 'xpath^^.//*[contains(text(), "Pulmonary Function Test (PFT) Panel and Panel Component")]',
          'pft tests found' => "xpath^^.//*[@data-test='red-node red-node-C113449']",


          #Clinical Documents - Full Text
          'btris: clinical documents full tex test' => "xpath^^.//*[@data-test='7-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'btris: clinical documents full tex report page' => "xpath^^.//*[contains(text(), 'Clinical Documents - Full Text Criteria')]",
          'clinical documents full tex result page' => "xpath^^.//*[contains(text(), 'Clinical Documents - Full Text Results Preview -')]",


          'select custom clinical document list' => "xpath^^.//*[@class='toolbar-link-label__label']",


          #Pathology report
          'btris: pathology test' => "xpath^^.//*[contains(@data-test, '11-radio-value')]",
          'btris: pathology report page' => "xpath^^.//*[contains(text(), 'Pathology Criteria')]",
          'pathology result page' => "xpath^^.//*[contains(text(), 'Pathology Results Preview -')]",
          'select all pathology test' => "xpath^^.//*[@for='pathologyTests-red-quick-pick-select-all']",
          'pathology test' => "xpath^^.//*[@class='checkbox-field']//*[contains(text(), 'Surgical Pathology')]",

          # IRB Inclusion Enrollment
          'btris: irb inclusion enrollment test' => "xpath^^.//*[@data-test='16-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'btris: irb inclusion enrollment report page' => "xpath^^.//*[contains(text(), 'IRB Inclusion Enrollment Criteria')]",
          'irb inclusion enrollment result page' => "xpath^^.//*[contains(text(), 'Cumulative Inclusion Enrollment Report')]",
          'download pd report button' => "xpath^^.//*[@data-test='download-Results-button']",
          'irb inclusion enrollment search protocol' => "xpath^^.//*[@id='protocolSection']/div[2]/span[2]",
          'irb inclusion select protocol' => "xpath^^.//*[@class='custom-control custom-radio']",
          'irb inclusion select prod protocol' => "xpath^^.//*[@data-test='select-pcsl-9807-protocol-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'report table validation' => "xpath^^.//*[@class='empty-message'][contains(text(), 'No records found')]",
          'red term pop up' => "xpath^^.//*[@for ='radiologyTests-red-term-keywords']",
          'imaging by procedure' => "xpath^^.//*[@data-test='red-node red-node-C3147738']",
          'echocardiogram tests' => "xpath^^.//*[@class ='custom-control-description checkbox__label-text'][contains(text(), 'Exercise Tolerance Echocardiography Procedure by Standardized Protocol Used')]",
          'ekg observations' => "xpath^^.//*[@class ='custom-control-description checkbox__label-text'][contains(text(), 'Electrocardiogram (EKG, ECG) Observation')]",
          'pathology test list' => "xpath^^.//*[@class ='custom-control-description checkbox__label-text'][contains(text(), 'Additional Studies/Requests')]",
          'pft tests' => "xpath^^.//*[@data-test='red-node red-node-C113449']",
          'upload status' => "xpath^^.//*[@class='noty_body']",
          'upload status 2' => "xpath^^.//div[4]/div[2]/div",
          'upload status failed' => "xpath^^.//*[@class='noty_body'][contains(text(), 'Upload failed')]",
          'top nav drop-down' => "xpath^^.//*[@id='nav-user-dropdown']",
          'all report page' => "xpath^^.//*[@data-test='records-top-pagination']",
          'all upload status' => "xpath^^.//*[@class='noty_body']",
          'protocol load status' => "xpath^^.//*[@class='noty_body']",



          'irb inclusion open report in new tab' => "xpath^^.//*[@data-test='open-in-new-window-button']",
          'irb inclusion search protocol2' => "xpath^^.//*[@data-test='select-pcsl-18789-protocol-radio-value'][contains(@class, 'custom-control custom-radio')]",
          # EKG Report
          'btris: ekg test' => "xpath^^.//*[@data-test='10-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'btris: ekg report page' => "xpath^^.//*[contains(text(), 'EKG Criteria')]",
          'select all ekg observation checkbox' => "xpath^^.//*[@for='ekgObservations-red-quick-pick-select-all']",
          'select ekg subject top button' => "xpath^^.//*[@data-test='criteria-next-button-top']",
          'select ekg subject bottom button' => "xpath^^.//*[@data-test='criteria-next-button-bottom']",
          'ekg result page' => "xpath^^.//*[contains(text(), 'EKG Results Preview -')]",
          'report table: subject name' => "xpath^^.//*[contains(text(), 'Subject Name')]",
          'observation text box' => "xpath^^//*[@id='red-quick-pick__autocomplete']",
          'observation value 1' => "xpath^^//*[@id='red-quick-pick__autocomplete-listbox-2177311']",
          'observation value 2' => "xpath^^//*[@id='red-quick-pick__autocomplete-listbox-3147199']",
          'observation value 3' => "xpath^^//*[@id='red-quick-pick__autocomplete-listbox-113243']",
          'observation value 4' => "xpath^^//*[@id='red-quick-pick__autocomplete-listbox-113251']",
          'observation value 5' => "xpath^^//*[@id='red-quick-pick__autocomplete-listbox-113249']",


          'ekg peg link2' => "xpath^^.//*[@data-test='records-top-pagination']//*[@data-test='2-button']",

          'ekg link to pdf' => "xpath^^.//*[@data-test='results-preview-table']/tbody/tr[27]/td[16]/a",




         #Microbiology Test
          'btris: microbiology test' => "xpath^^.//*[@data-test='14-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'btris: microbiology report page' => "xpath^^.//*[contains(text(), 'Microbiology Criteria')]",
          'select all microbiology observation checkbox' => "xpath^^.//*[@for='ekgObservations-red-quick-pick-select-all']",
          'select microbiology subject top button' => "xpath^^.//*[@data-test='criteria-next-button-top']",
          'unchecked subject button' => "xpath^^.//*[@data-test='select-all-subjects-button']",
          'subject checkbox' => "xpath^^.//*[@data-test='subject-checkbox']",
          'microbiology result page' => "xpath^^.//*[contains(text(), 'Microbiology Results Preview -')]",
          'blinded results drop down' => "xpath^^.//*[@id='blindedResults-select']",
          #Echocardiogram Test
          'btris: echocardiogram test' => "xpath^^.//*[@data-test='12-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'btris: echocardiogram report page' => "xpath^^.//*[contains(text(), 'Echocardiogram Criteria')]",
          'select all echocardiogram tests checkbox' => "xpath^^.//*[@for='echocardiogramTests-red-quick-pick-select-all']",
          'select echocardiogram subject top button' => "xpath^^.//*[@data-test='criteria-next-button-top']",
          'echocardiogram result page' => "xpath^^.//*[contains(text(), 'Echocardiogram Results Preview -')]",
          'echo tests 2' => "xpath^^//*[@id='red-quick-pick__autocomplete-listbox-2105073']",
          'echo tests 3' => "xpath^^//*[@id='red-quick-pick__autocomplete-listbox-2105072']",
          'echo tests 4' => "xpath^^//*[@id='red-quick-pick__autocomplete-listbox-2105074']",
          'echo tests 5' => "xpath^^//*[@id='red-quick-pick__autocomplete-listbox-2105075']",
          'echo tests 6' => "xpath^^//*[@id='red-quick-pick__autocomplete-listbox-2104892']",



          #Reference List Report
          'custom user drop down' => "xpath^^.//*[@id='nav-user-dropdown']",
          'custom list' => "xpath^^.//*[@data-test='nav-user-dropdown-custom-list-management']",
          'left nav: search term list' => "xpath^^.//*[@class='clm-nav__link'][contains(text(), 'Search Term Lists')]",
          'custom list search term box' => "xpath^^.//*[@id='search-term-lists-search-field']",
          'custom search term check box' => "xpath^^.//*[@data-test='search-term-list-checkbox']",
          'custom search term list remove button' => "xpath^^.//*[@id='app']/div/div/div[1]/div[2]/div/div[2]/div/div/div/div[1]/div/div[1]/a/span",
          'custom search term list upload button' => "xpath^^.//*[@data-test='listviewheader-search-term-lists-upload-list']",
          'custom reference lists upload button' => "xpath^^.//*[@data-test='listviewheader-reference-lists-upload-list']",
          'list description' => "xpath^^.//*[@class='sm']",

          'save lab list: user field' => "xpath^^.//*[@id='save-custom-list-user-field']",
          'save lab list: user name' => "xpath^^.//*[@id='save-custom-list-user-field-listbox-BTRIS_TEST2']",

          'custom reference list: user field' => "xpath^^.//*[@id='reference-list-upload-user-field']",
          'custom reference list: user' => "xpath^^.//*[@id='reference-list-upload-user-field-listbox-BTRIS_TEST2']",

          'custom search term list confirm remove' => "xpath^^.//*[@class='btn round btn-lg btn-danger']",
          'custom search term list: user field' => "xpath^^.//*[@id='red-list-upload-user-field']",
          'reference list upload: user field' => "xpath^^.//*[@id='reference-list-upload-user-field']",

          'list name user field' => "xpath^^.//*[@id='red-list-upload-user-field']",
          'warning pop-up message' => "xpath^^.//*[@class='modal-secondary-header']//*[contains(text(), 'Conditions of Use and Code of Conduct')]",
          'irb test' => "xpath^^.//*[@class='custom-control-description radio__label-text'][contains(text(), 'IRB Inclusion Enrollment')]",
          'niaaa assessments' => "xpath^^.//*[@class ='custom-control-description checkbox__label-text'][contains(text(), 'Activated Partial Thromboplastin Time Plasma Test (NIAAA, ASM_PTT)')]",
          'general reports' => "xpath^^.//*[@class='custom-control-description radio__label-text'][contains(text(), 'Clinical Documents - Discrete Values')]",
          'btris login page' => "xpath^^.//*[@class ='btn round btn-lg btn-secondary'][contains(text(), 'Log In')]",
          'potassium test' => "xpath^^.//*[@data-test='red-node red-node-C114092']",
          'serial research' => "xpath^^.//*[@data-test='red-node red-node-C2166735']",
          'serial cc chris' => "xpath^^.//*[@data-test='red-node red-node-C524353679']",
          'serial testing' => "xpath^^.//*[@data-test='red-node red-node-C2166966']",
          'glasgow coma scale observation' => "xpath^^.//*[@data-test='red-node red-node-C3166440']",
          'body  dtm' => "xpath^^.//*[@data-test='red-node red-node-C2257726']",
          'glasgow coma search' => "xpath^^.//*[@data-test='red-node red-node-C3166440']",
          'reference list reports: laboratory' => "xpath^^.//*[@id='referenceListRpts']//*[contains(text(), 'Laboratory')]",
          'reference list reports: pathology' => "xpath^^.//*[@id='referenceListRpts']//*[contains(text(), 'Pathology')]",
          'reference list reports: radiology' => "xpath^^.//*[@id='referenceListRpts']//*[contains(text(), 'Radiology')]",
          'reference list reports: vital sign' => "xpath^^.//*[@id='referenceListRpts']//*[contains(text(), 'Vital Signs')]",
          'upload reference list page title' => "xpath^^.//*[@id='__btris-modal-title__']",


          'custom search term list: list name field' => "xpath^^.//*[@id='red-list-upload-name-field']",
          'custom search term list: description' => "xpath^^.//*[@id='red-list-upload-description-field']",
          'custom search term list: domain drop down' => "xpath^^.//*[@id='red-list-upload-domain-field']",
          'custom search term list: brows upload' => "xpath^^.//*[@id='red-list-upload-file-field']",
          'custom search term list: upload button' => "xpath^^.//*[@class='btn round btn-lg btn-primary']",
          'custom search term list: user' => "xpath^^.//*[@id='red-list-upload-user-field-listbox-BTRIS_TEST2']",
          'reference list upload: user' => "xpath^^.//*[@id='reference-list-upload-user-field-listbox-BTRIS_TEST2']",

          'custom search term overwrite checkbox' => "xpath^^.//*[@class='custom-control custom-checkbox'][@for='red-list-upload-overwrite-checkbox']",
          'reference list' => "xpath^^.//*[@class='clm-nav__link'][contains(@href, '/app/custom-lists/reference-dates')]",
          'reference list: search box' => "xpath^^.//*[@id='reference-lists-search-field']",
          'reference list: search list check box' => "xpath^^.//*[@data-test='reference-list-checkbox']",
          'reference list: list name field' => "xpath^^.//*[@id='reference-list-upload-name-field']",
          'reference list: overwrite checkbox' => "xpath^^.//*[@for='reference-list-upload-overwrite-checkbox']",
          'reference list: description' => "xpath^^.//*[@id='reference-list-upload-description-field']",
          'reference list: date type' => "xpath^^.//*[@id='reference-list-upload-date-type-field']",
          'reference list: brows upload' => "xpath^^.//*[@id='reference-list-upload-file-field']",
          'reference list: upload button' => "xpath^^.//*[@class='btn round btn-lg btn-primary']",
          'nav arrow to active protocol' => "xpath^^.//*[@class='svg-inline--fa fa-arrow-left fa-w-14 fa-lg']",
          'reference list top nav' => "xpath^^.//*[@class='tabs__link']//*[contains(text(), 'Reference List Reports')]",
          'reference list laboratory' => "xpath^^.//*[@data-test='17-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'reference list laboratory report filter page' => "xpath^^.//*[contains(text(), 'Laboratory Criteria')]",
          'reference list drop down' => "xpath^^.//*[@id='select-reference-list']",
          'reference list day range text box' => "xpath^^.//*[@id='day-range-from-numeric-value']",
          'number of days after text box' => "xpath^^.//*[@id='day-range-to-numeric-value']",
          'number of values text box' => "xpath^^.//*[@id='referenceListClosestRecordCount-reference-list-number-of-values']",
          'labs drop down' => "xpath^^.//*[@id='selectLabList-reference-list-select-search-terms']",
          'reference list blinded results drop down' => "xpath^^.//*[@id='blindedResults-select']",
          'enter required criteria button' => "xpath^^.//*[@data-test='criteria-next-button-bottom']",
          'reference document with negative mrn number' => "xpath^^.//*[@class='form-control-feedback'][contains(text(), 'There was 1 error with your submission:')]",
          'reference list: radiology report results table' => "xpath^^.//*[contains(text(), 'Radiology Results Preview -')]",
          'laboratory error message line 1' => "xpath^^.//*[contains(text(), 'Line 1 - MRI Brain (CC, RADNET) is not in domain Laboratory')]",
          'laboratory error message line 2' => "xpath^^.//*[contains(text(), 'Line 2 - CT Abdomen (CC, MIS) is not in domain Laboratory')]",
          'pathology error message line 1' => "xpath^^.//*[contains(text(), 'Line 1 - MRI Brain (CC, RADNET) is not in domain')]",
          'pathology error message line 2' => "xpath^^.//*[contains(text(), 'Line 2 - CT Abdomen (CC, MIS) is not in domain')]",
          'upload feedback status' => "xpath^^.//*[@class='noty_body'][contains(text(), 'Upload succeeded')]",
          'upload search term list page title' => "xpath^^.//*[@class ='modal-title']",
          'overwrite existing list' => "xpath^^.//*[@class ='custom-control-description checkbox__label-text']",
          'overwrite existing reference list' => "xpath^^.//*[@class ='custom-control-description checkbox__label-text'][contains(text(), 'Overwrite existing list with same name')]",


          #Admin Report
          'navigation: admin report' => "xpath^^.//*[@data-test='launch-admin-reports-button']",
          'admin report tab' => "xpath^^.//*[@id='t-Admin Reports']",
          'admin exam start date' => "xpath^^.//*[@id='examDateRange-date-range-start-date']",
          'admin exam end date' => "xpath^^.//*[@id='examDateRange-date-range-end-date']",

          'report: radiology administration' => "xpath^^.//*[@data-test='1021-radio-value']",
          'btris: radiology administrative report filter page' => "xpath^^.//*[@class='prompts-header__heading']//*[contains(text(), 'Radiology Administration Criteria')]",
          'radiology administrative report page' => "xpath^^.//*[contains(text(), 'Radiology Administration Results Preview -')]",
          'admin: open results in new tab button' => "xpath^^.//*[@data-test='open-in-new-window-button']",
          'admin: administrative report image' => "xpath^^.//*[contains(@data-test, 'results-preview-table')]/tbody/tr/td[6]/a[contains(text(), 'NM5000574218')]",
          'admin: administrative report image report' => "xpath^^.//*[@id='mainTab-0-tabCaptionPlace']",
          'admin: add radiology report tests button' => "xpath^^.//*[@data-test='add-red-terms-button']",
          'admin: radiology search text box' => "xpath^^.//*[@id='radiologyTests-red-term-keywords']",
          'admin: radiology search button' => "xpath^^.//*[@data-test='red-search-search-button']",
          'admin: radiology search red search result' => "xpath^^.//*[@data-test='red-node red-node-C3147738'][contains(text(), 'Imaging by Procedure Type')]",
          'admin: radiology red search done button' => "xpath^^.//*[@data-test='red-search-upper-done-button']",
          'radiology error message line 1' => "xpath^^.//*[contains(text(), 'Line 6 - NM Liver/Spleen Scan (CC, MIS) is not in domain')]",
          'radiology error message line 2' => "xpath^^.//*[contains(text(), 'Line 2 - Hemoglobin (Hgb) Whole Blood Test, (CC, SOFTLAB, HGB1) is not in domain')]",
          'upload cancel button' => "xpath^^.//*[@class='btn round btn-lg btn-secondary'][contains(text(), 'Cancel')]",
          'radiology age ref1' => "xpath^^.//*[contains(@data-test, 'results-preview-table')]/tbody/tr[1]/td[3]",

          #Subject List
          'left nav: subject list' => "xpath^^.//*[@class='clm-nav__link router-link-exact-active router-link-active'][contains(text(), 'Subject Lists')]",

          'find subject list search box' => "xpath^^.//*[@id='subject-lists-search-field']",
          'subject list search check box' => "xpath^^.//*[@data-test='search-term-list-checkbox']",
          'subject list remove button' => "xpath^^.//*/div/div/div[1]/div[2]/div/div[2]/div/div/div/div[1]/div/div[1]/a/span/span",
          'subject list upload button' => "xpath^^.//*[@data-test='listviewheader-subject-lists-upload-list']",
          'subject list confirm remove' => "xpath^^.//*[@class='btn round btn-lg btn-danger']",
          'subject list: user field' => "xpath^^.//*[@id='subject-list-upload-user-field']",
          'subject list: list name field' => "xpath^^.//*[@id='subject-list-upload-name-field']",
          'subject list: description' => "xpath^^.//*[@id='subject-list-upload-description-field']",
          'subject list: brows upload' => "xpath^^.//*[@id='subject-list-upload-file-field']",
          'subject list: upload doc button' => "xpath^^.//*[@class='btn round btn-lg btn-primary']",
          'subject list: user' => "xpath^^.//*[@id='subject-list-upload-user-field-listbox-BTRIS_TEST2']",
          'subject list overwrite checkbox' => "xpath^^.//*[@class='custom-control custom-checkbox'][@for='subject-list-upload-overwrite-checkbox']",
          'reference list radiology' => "xpath^^.//*[@data-test='81-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'reference list radiology report filter page' => "xpath^^.//*[contains(text(), 'Radiology Criteria')]",
          'reference list: radiology report page' => "xpath^^.//*[contains(text(), 'Radiology Results Preview -')]",
          'reference list vital sign' => "xpath^^.//*[@data-test='21-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'reference list vital signs report filter page' => "xpath^^.//*[contains(text(), 'Vital Signs Criteria')]",
          'reference list: vital signs report results table' => "xpath^^.//*[contains(text(), 'Vital Signs Results Preview -')]",
          'vital sign error message line 1' => "xpath^^.//*[contains(text(), 'Line 1 - MRI Brain (CC, RADNET) is not in domain Vital Signs')]",
          'vital sign error message line 2' => "xpath^^.//*[contains(text(), 'Line 2 - CT Abdomen (CC, MIS) is not in domain Vital Signs')]",
          'reference document with negative vital sign data' => "xpath^^.//*[contains(text(), 'Found 2 columns, expecting 1')]",
          'reference list pathology' => "xpath^^.//*[@data-test='31-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'reference list pathology report filter page' => "xpath^^.//*[contains(text(), 'Pathology Criteria')]",
          'pathology and procedure report page' => "xpath^^.//*[contains(text(), 'Pathology Results Preview -')]",
          'page error display' => "xpath^^.//*[@id='main-message']",
          'download subjects button' => "xpath^^.//*[@class='btn round btn-sm btn-primary'][contains(text(), 'Download Subjects')]",




          #Pivot Count
          'subjects count' => "xpath^^.//*[@data-test='subject-count']//*[@data-test='count']",
          'records count' => "xpath^^.//*[@data-test='record-count']//*[@data-test='count']",
          'report view drop_down' => "xpath^^.//*[@id='report-output-format-select']",

          #RL
          'bone marrow pathology' => "xpath^^.//*[@class='red-selection chip'][contains(text(), 'Bone Marrow Pathology')]",
          #Multiple Reports
          'add new report button' => "xpath^^.//*[@data-test='new-report-button']",
          'echo result tab' => "xpath^^.//*[@data-test='report-tab-link-124972']",
          'ekg result tab' => "xpath^^.//*[@data-test='report-tab-link-124973']",
          'echo report value' => "xpath^^.//*[@data-test='12-radio-value']//*[contains(text(), 'Echocardiogram')]",
          'echo tests' => "xpath^^//*[contains(text(), 'Modified Bruce Protocol Exercise Tolerance Echocardiography, Procedure')]",
          'nav bar in mobile' => "xpath^^.//*[@aria-label='Toggle navigation']",
          'homepage nav bar in mobile' => "xpath^^.//*[@class='navbar-toggler navbar-toggler-right collapsed']",
          'echocardiogram tests search fields' => "xpath^^.//*[@id='red-quick-pick__autocomplete'][contains(@placeholder, 'Start typing to find echocardiogram tests')]",
          'echocardiogram tests input' => "xpath^^//*[@id='red-quick-pick__autocomplete-listbox-2105076']",
          'list remove confirmation' => "xpath^^.//*[@class='noty_body']",
          'echocardiogram components search fields' => "xpath^^.//*[@placeholder='Start typing to find echocardiogram test components']",
          'echocardiogram test components' => "xpath^^//*[@id='red-quick-pick__autocomplete-listbox-2104942']",


          #My Report Selection
          'my report selections button' => "xpath^^.//*[@class='btn round btn-lg btn-primary']",
          'my report selections cart' => "xpath^^.//*[@class='shopping-cart__header section-title white-bg center']//*[contains(text(), 'My Report Selections')]",
          'edit/view report criteria button' => "xpath^^.//body/span/div/div[1]/div[3]/article[1]/div/div[2]/a/span",
          'edit/view report subjects button' => "xpath^^.//body/span/div/div[1]/div[3]/article[2]/div/div[2]/a/span",
          'view results button' => "xpath^^.//*[@class='router-link-exact-active router-link-active btn btn-sm btn-primary btn-all-caps']//*[contains(text(), 'VIEW RESULTS')]",
          'cart protocol list' => "xpath^^.//*[@class='cart__subsection-list']/li",
          'clinical documents start date' => "xpath^^.//*[@id='documentDateRange-date-range-start-date']",
          'clinical documents end date' => "xpath^^.//*[@id='documentDateRange-date-range-end-date']",
          'close shopping cart icon' => "xpath^^.//*[@class='button__embedded-icon svg-inline--fa fa-times fa-w-11']",
          'echocardiogram start date' => "xpath^^.//*[@id='resultDateRange-date-range-start-date']",
          'echocardiogram end date' => "xpath^^.//*[@id='resultDateRange-date-range-end-date']",
          'cart protocol list 2' => "xpath^^.//body/span/div/div[1]/div[3]/article[1]/div/div[2]/p[1]/ul/li[2]",
          'ekg start date' => "xpath^^.//*[@id='resultDateRange-date-range-start-date']",
          'ekg end date' => "xpath^^.//*[@id='resultDateRange-date-range-end-date']",
          'initial consent start date' => "xpath^^.//*[@id='initialConsentDateRange-date-range-start-date']",
          'initial consent end date' => "xpath^^.//*[@id='initialConsentDateRange-date-range-end-date']",
          'new subjects accrued start date' => "xpath^^.//*[@id='newSubjectsAccrued-date-range-start-date']",
          'new subjects accrued end date' => "xpath^^.//*[@id='newSubjectsAccrued-date-range-end-date']",
          'lab collection start date' => "xpath^^.//*[@id='collectedDateRange-date-range-start-date']",
          'lab collection end date' => "xpath^^.//*[@id='collectedDateRange-date-range-end-date']",
          'microbiology collection start date' => "xpath^^.//*[@id='collectedDateRange-date-range-start-date']",
          'microbiology collection end date' => "xpath^^.//*[@id='collectedDateRange-date-range-end-date']",
          'niaaa assessment start date' => "xpath^^.//*[@id='assessmentDateRange-date-range-start-date']",
          'niaaa assessment end date' => "xpath^^.//*[@id='assessmentDateRange-date-range-end-date']",
          'nichd/ctdb visit start date' => "xpath^^.//*[@id='visitDateRange-date-range-start-date']",
          'nichd/ctdb visit end date' => "xpath^^.//*[@id='visitDateRange-date-range-end-date']",
          'pathology result start date' => "xpath^^.//*[@id='resultDateRange-date-range-start-date']",
          'pathology result end date' => "xpath^^.//*[@id='resultDateRange-date-range-end-date']",
          'document start date' => "xpath^^.//*[@id='pdfDocumentDateRange-date-range-start-date']",
          'document end date' => "xpath^^.//*[@id='pdfDocumentDateRange-date-range-end-date']",
          'pulmonary performed start date' => "xpath^^.//*[@id='performedDateRange-date-range-start-date']",
          'pulmonary performed end date' => "xpath^^.//*[@id='performedDateRange-date-range-end-date']",
          'radiology exam start date' => "xpath^^.//*[@id='examDateRange-date-range-start-date']",
          'radiology exam end date' => "xpath^^.//*[@id='examDateRange-date-range-end-date']",
          'vital sign measurement start date' => "xpath^^.//*[@id='measurementDateRange-date-range-start-date']",
          'vital sign measurement end date' => "xpath^^.//*[@id='measurementDateRange-date-range-end-date']",
          'select custom radiology test link' => "xpath^^.//*[@data-test='redpickerlauncher-select-list']",
          'custom list value' => "xpath^^.//*[contains(text(), 'Radiology Template 101')]",
          'custom list value for lab' => "xpath^^.//*[contains(text(), 'PKLR_0146')]",
          'load selected lists button' => "xpath^^//*[@class='btn round btn-lg btn-primary'][contains(text(),'Load Selected Lists')]",
          'result record count' => "xpath^^.//*[@data-test='record-count']/h3",


          #Smart Cart Login.
          'smart cart login page' => "xpath^^.//*[@class='h3'][contains(text(), 'Smart Card Login')]",
          'alternative login link' => "xpath^^.//*[@id='form']/p/a",
          'user name attribute sc' => 'xpath^^//*[@id="Login"]/div/div[2]/label/span/strong',
          'btris: smart card login to dashboard button' => "xpath^^//*[@value='LOGIN']",

           # SiteMinder Login
          'siteminder username' => "xpath^^.//*[@for='username']",
          'siteminder username input' => "xpath^^.//*[@id='USER']",
          'siteminder password input' => "xpath^^.//*[@id='PASSWORD']",
          'siteminder sign in button' => "xpath^^.//*[@class='nih-white-button vertical-spaced-sm']",
          'user login status' => "xpath^^.//*[(@class='error-page__headline')]",





      }
end