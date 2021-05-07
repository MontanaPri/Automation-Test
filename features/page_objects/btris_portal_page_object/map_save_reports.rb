def map_save_reports
  @page_objects['save_reports'] =


      {
          #Save Reports.
          'save report configuration button' => "xpath^^.//*[@data-test='save-report-button']",
          'save report pop-up title' => "xpath^^.//*[@id='__btris-modal-title__']",
          'save report configuration name filed' => "xpath^^.//*[@id='custom-report-save-name-field']",
          'save report configuration description box' => "xpath^^.//*[@id='custom-report-save-description-field']",
          'report configuration cancel button' => "xpath^^.//*[@class='btn round btn-lg btn-secondary'][contains(text(), 'Cancel')]",
          'report configuration save button' => "xpath^^.//*[@class='btn round btn-lg btn-primary'][contains(text(), 'Save')]",
          'report configuration required message' => "xpath^^.//*[@class='form-control-feedback'][contains(text(), 'Report name is required')]",
          'save report on drop-down' => "xpath^^.//*[@data-test='nav-user-dropdown-saved-reports']",
          'saved reports search field' => "xpath^^.//*[@id='saved-reports-search-field']",
          'delete button for saved report' => "xpath^^.//*[@class='btn btn-med btn-danger']",
          'confirm delete button for saved report' => "xpath^^//*[@class='btn round btn-lg btn-danger']",
          'primary nav active protocol' => "xpath^^.//*[@data-test='primary-nav-active-protocols']//*[contains(text(), 'Active Protocols')]",
          'demographic saved report' => "xpath^^.//*[@class='table saved-reports-table hover-row-highlight']//*[contains(text(), 'Demographics')]",

          'edit button for saved report' => "xpath^^.//*[@class='btn btn-med btn-secondary']//*[contains(text(), 'Edit')]",
          'report details nav' => "xpath^^.//*[@class='title title_center'][contains(text(), 'Report Details')]",
          'saved button for edited report' => "xpath^^.//*[@class='btn round btn-lg btn-primary']",
          'run button for saved report' => "xpath^^.//*[@class='btn btn-med btn-primary'][contains(text(), 'Run')]",
          'protocol number row' => "xpath^^.//*[@data-test='results-preview-table']/tbody/tr[1]/td[1]",
          'copy button for saved report' => "xpath^^.//*[@class='btn btn-med btn-secondary'][contains(text(), 'Copy')]",
          'copy report button' => "xpath^^.//*[@class='btn round btn-lg btn-primary']",
          'subject top nav' => "xpath^^.//*[@class='title title_center'][contains(text(), 'Subjects')]",
          'edit order date run button' => "xpath^^.//*[@class='btn round btn-lg btn-primary']",
          'medication saved report' => "xpath^^.//*[@class='table saved-reports-table hover-row-highlight']/tbody/tr[1]/td[2]",
          'saved button' => "xpath^^.//*[@class='btn round btn-lg btn-primary'][contains(text(), 'Save')]",
          'radiology admin saved report' => "xpath^^.//*[@class='table saved-reports-table hover-row-highlight']/tbody/tr[1]/td[2]",
          'run button radiology admin saved report' => "xpath^^.//*[@class='btn round btn-lg btn-primary'][contains(text(), 'Run')]",
          'vital sign rl saved report' => "xpath^^.//*[@class='table saved-reports-table hover-row-highlight']/tbody/tr[1]/td[2]",
          '2nd run button for saved report' => "xpath^^.//*[@class='btn round btn-lg btn-primary'][contains(text(), 'Run')]",
          'lab rl saved report' => "xpath^^.//*[@class='table saved-reports-table hover-row-highlight']/tbody/tr[1]/td[2]",
          'clinical doc dv rl saved report' => "xpath^^.//*[@class='table saved-reports-table hover-row-highlight']//*[contains(text(), 'Clinical Documents - Discrete Values')]",
          'pathology rl saved report' => "xpath^^.//*[@class='table saved-reports-table hover-row-highlight']/tbody/tr[1]/td[2]",
          'radiology rl saved report' => "xpath^^.//*[@class='table saved-reports-table hover-row-highlight']/tbody/tr[1]/td[2]",




      }
end