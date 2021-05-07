def map_meds_ufo
  @page_objects['meds_ufo'] =


      {
          #Medication UFO.
          'add medication button' => "xpath^^.//*[@data-test='add-cluster-search-terms-button']",
          'string search box' => "xpath^^.//*[@data-test='cluster-search-keywords-input']",
          'search categories button' => "xpath^^.//*[@data-test='medications-search-categories-button']",
          'search ingredients button' => "xpath^^.//*[@data-test='medications-search-ingredients-button']",
          'med ufo search pop-up' => "xpath^^.//*[@class='modal-title']",
          'add med ufo done button' => "xpath^^.//*[@data-test='red-search-lower-done-button']  ",
          'top record' => "xpath^^.//*[(@class='jstree-anchor')]",
          'ingredients record #3' => "xpath^^.//*[(@tabindex='-1')]",
          'show ingredients link' => "xpath^^.//*[@title='Show Ingredients']",
          'category record #2' => "xpath^^.//*[(@tabindex='-1')]",
          'expand fist result tree' => "xpath^^.//*[(@class='jstree-icon jstree-ocl')]",
          'fist result tree' => "xpath^^.//*[(@data-test='red-node red-node-M334')]",
          'fist result selected chip' => "xpath^^.//*[(@class='red-selection chip')]",
          'ingredients record' => "xpath^^.//*[(@data-test='red-node red-node-M3168')]",
          '#1 search result' => "xpath^^.//*[(@data-test='red-node red-node-C5243721')]",
          '#2 search result' => "xpath^^.//*[(@id='C139337_anchor')]",
          '#3 search result' => "xpath^^.//*[(@id='C136942_anchor')]",
          'error message' => "xpath^^.//*[(@class='alert alert-warning')]",
          '#1 result' => "xpath^^.//*[(@id='M3167_anchor')]",
          '#1 cat result' => "xpath^^.//*[(@data-test='red-node red-node-C103260')]",
          'show more' => "xpath^^.//*[(@title='Show Ingredients')]",
          'top results' => "xpath^^.//*[(@data-test='red-node red-node-C103086')]",
          'single cat result' => "xpath^^.//*[(@data-test='red-node red-node-C137169')]",
          'search results tc1' => "xpath^^.//*[(@data-test='red-node red-node-C2159748')]",
          'search results tc2' => "xpath^^.//*[(@data-test='red-node red-node-C103098')]",
          'search results tc3' => "xpath^^.//*[(@data-test='red-node red-node-C103116')]",
          'search results tc4' => "xpath^^.//*[(@data-test='red-node red-node-C103084')]",
          'search results tc5' => "xpath^^.//*[(@data-test='red-node red-node-C103260')]",
          'search results tc6' => "xpath^^.//*[(@data-test='red-node red-node-C2178861')]",












      }
end