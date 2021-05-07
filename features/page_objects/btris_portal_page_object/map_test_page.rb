def map_test_page
  @page_objects['test_page'] =


      {
          #Export librarian, adding a country.
          'first login test'                   =>"xpath^^.//*[@id='app']/div/div/div[1]/section[1]/div/div/div[1]/div/div/div[2]/div/div/h2",
          'test accept button'                 =>"xpath^^.//*[@data-test='accept-conditions-of-use-button']",
          'test active protocols button'       =>"xpath^^.//*[@data-test='launch-active-protocols-button']",
          'diagnosis and procedures'           =>"xpath^^.//*[@data-test='19-radio-value']",
          'create new button'                  =>"xpath^^.//*[@class='btn round btn-lg btn-primary']",
          'select subjects'                    =>"xpath^^.//*[contains(@data-test, 'criteria-next-button-top')]",
          'find protocols and subjects lists box'  =>"xpath^^.//*[@id='pcsl-search-field']",
          'find filter subject box'             =>"xpath^^.//*[@id='subject-search-field']",
          'run button'                         =>"xpath^^.//*[@data-test='run-report-button']",
          #'pivot drop down'                    =>"xpath^^.//*[@id='report-output-format-select']",
          'test: diagnosis and procedure report page'   =>"xpath^^.//*[contains(text(), 'Diagnosis & Procedure Results Preview - ')]",
          'test: diagnosis and procedure report table'    =>"xpath^^.//*[@data-test='results-preview-table']/tbody/tr[1]/td[1]",
          #Laboratory Test.
          'laboratory test'                       =>"xpath^^.//*[@data-test='4-radio-value'] [contains(@class, 'custom-control custom-radio')]",
          'laboratory filter report page'         =>"xpath^^.//*[contains(text(), 'Laboratory Criteria')]",
          'btris: bottom select button'            =>"xpath^^.//*[(@data-test='criteria-next-button-bottom')]",
          'laboratory results preview - standard'  =>"xpath^^.//*[contains(text(), 'Laboratory Results Preview - ')]",
          #Red search
          'lab : add labs button'         =>"xpath^^.//*[contains(@data-test, 'add-red-terms-button')]",
          'lab: search labs text box'      =>"xpath^^.//*[@data-test='red-search-keywords-input']",
          'lab: search type drop down'     =>"xpath^^.//*[@id='labs-red-term-search-type']",
          'lab: search button'             =>"xpath^^.//*[@data-test='red-search-search-button']",
          'lab: done button'                    =>"xpath^^.//*[@data-test='red-search-lower-done-button']",
          'enter report criteria link'                    =>"xpath^^.//*[@class='btris-progress-bar-item__step-label'][contains(text(), 'Enter Report Criteria')]",
          'add labs pop-up'                    =>"xpath^^.//*[@class='modal-title']",
          #EKG
          'ekg test'             =>"xpath^^.//*[@data-test='10-radio-value'][contains(@class,'custom-control custom-radio')]",
         'ekg criteria'          =>"xpath^^.//*[contains(text(),'EKG Criteria')]",
          'ekg select subjects top button'      =>"xpath^^.//*[@class='btn round btn-lg btn-primary'][contains(@data-test,'criteria-next-button-top')]",
          'protocol check box'    =>"xpath^^.//*[@class='custom-control custom-checkbox'][contains(@data-test,'protocol-checkbox')]",
          'ekg result'              =>"xpath^^.//*[contains(text(),'EKG Results Preview - ')]",
          'download full results'      =>"xpath^^.//*[contains(@data-test,'download-results-button')]",
          'open in new window'         =>"xpath^^.//*[contains(@data-test,'open-in-new-window-button')]",
          'Observations select all'     =>"xpath^^",









      }
end