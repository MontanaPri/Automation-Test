def map_manage_subjects
  @page_objects['manage_subjects'] =


      {
          #Export librarian, adding a country.
          'top navigation: manage subject' => "xpath^^.//*[@class='btn round btn-lg dataset-card-button']//*[contains(text(), 'Manage Subjects')]",
          'search protocol text box' => "xpath^^.//*[@id='manage-subjects-protocols-search-field']",
          'searched protocol table' => "xpath^^.//*[@data-test='manage-subjects-protocols']/tbody/tr[1]/td[1]",
          'searched subject' => "xpath^^.//*[@class='no-break']",
          'manage subject page' => "xpath^^.//*[@class='manage-subjects-header__title']",
          'protocols table' => "xpath^^.//*[@data-test='manage-subjects-protocol-subjects']",
          'number of subjects' => "xpath^^.//*[@class ='table manage-protocols-table hover-row-highlight']/tbody/tr[1]/td[5]//strong",
          'number of consented subjects' => "xpath^^.//*[@data-test='mps-consented-count']",
          'subject consented switch' => "xpath^^.//*[@class='table manage-protocol-subjects-table hover-row-highlight']/tbody/tr[1]/td[3]//label",
          'subject table' => "xpath^^.//*[@class='table manage-protocol-subjects-table hover-row-highlight']/tbody/tr[1]/td[1]",
          'back arrow' => "xpath^^.//*[@data-icon='arrow-circle-left']",
          'subject search field' => "xpath^^.//*[@id='manage-subjects-protocol-subjects-search-field']",
          'initial consent date' => "xpath^^.//*[contains(@id, 'manage-protocol-subjects-initial-consent-')]",
          'initial consent info icon' => "xpath^^.//*[@class='table manage-protocol-subjects-table hover-row-highlight']/thead/tr/th[8]/div/button[2]",
          'initial consent info pop-up' => "xpath^^.//*[@id='__btris-modal-title__']",
          'initial consent info pop-up close button' => "xpath^^.//*[@class='btn round btn-lg btn-secondary']",
          'add subject button' => "xpath^^.//*[@class='btn round btn-sm btn-primary']//*[contains(text(), 'Add Subjects')]",
          'enter mrn text box' => "xpath^^.//*[@id='add-subjects-enter-subject-mrns']",
          'display mrn message header' => "xpath^^.//*[@id='invalid-mrn-display-header']",
          'submit button' => "xpath^^.//*[@data-test='submit-mrns-text-upload']",
          'display mrn message banner' => "xpath^^.//*[@id='display-action-banner']",
          'affirm consent button' => "xpath^^.//*[@id='display-action-banner']/button",
          'affirm consent message' => "xpath^^.//*[contains (text(), 'Success!')]",
          'return to subject button' => "xpath^^.//*[@class='router-link-active btn round btn-sm btn-primary']",
          'manage subject protocol text box' => "xpath^^.//*[@id='manage-subjects-protocol-subjects-search-field']",
          'delete protocol icon' => "xpath^^.//*[@data-test='remove-subject-button']",
          'remove button' => "xpath^^.//*[@class='btn round btn-lg btn-danger']",
          'add subject validation' => "xpath^^.//*[@id='invalid-mrn-display-banner']//*[contains(text(), 'Already in Protocol')]",
          'manage protocol subject' => "xpath^^.//*[@class='table manage-protocol-subjects-table hover-row-highlight']/thead/tr/th[2]",
          'brows button' => "xpath^^.//*[@id='app']//*[contains(@type, 'file')]",
          'upload subjects button' => "xpath^^.//*[@data-test='enter-or-upload-subjects-file-upload']",
          'upload subjects clear button' => "xpath^^(//button[@type='button'])[4]",
          'invalid mrn display danger' => "xpath^^.//*[@class='invalid-mrn-display__danger-sub-full']/h3",
          'invalid mrn display' => "xpath^^.//*[@class='invalid-mrn-display__danger-sub-full']/p",
          'manage protocol: consented subject count' => "xpath^^.//*[@class ='table manage-protocols-table hover-row-highlight']//tr[1]/td[5]//div//strong",
          'manage protocol: protocol' => "xpath^^.//*[@class ='table manage-protocols-table hover-row-highlight']/tbody/tr[1]/td[1]//a",
          'manage protocol: mrn on table' => "xpath^^.//*[@class ='table manage-protocol-subjects-table hover-row-highlight']/tbody/tr[1]/td[1]",
          'consented notification' => "xpath^^.//*[@class='noty_body']",
          'header notification' => "xpath^^.//*[@id='display-action-banner']//*[contains(text(), 'Return to Subjects')]",
          'total protocols'    => "xpath^^.//*[@class ='manage-subjects-header__title']",

      }
end