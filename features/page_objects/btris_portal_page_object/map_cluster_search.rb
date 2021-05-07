def map_cluster_search
  @page_objects['cluster_search'] =


      {

           #Lab Cluster Search
          'cluster: keto search results' => "xpath^^.//*[(@class='jstree jstree-1 jstree-proton jstree-proton-responsive jstree-checkbox-selection')]",
          'cluster: search result status' => "xpath^^.//*[(@class='cluster-picker__search-results')]",
          'cluster: search result/s' => "xpath^^.//*[(@class='jstree-container-ul jstree-children jstree-no-icons jstree-no-checkboxes')]",
          'cluster: search result carboxyhemoglobin-children' => "xpath^^.//*[(@class='jstree-children')]",
          'cluster group: expand search result icon' => "xpath^^.//*[@class='jstree-icon jstree-ocl']",
          'cluster: search result children' => "xpath^^.//*[(@class='jstree-children')]",
          'cluster panel group expand icon' => "xpath^^.//*[(@class='jstree-icon jstree-ocl')]",
          'results retrieved for icon' => "xpath^^.//*[(@data-test='red-node red-node-E93')]",
          'expand results retrieved for icon' => "xpath^^.//*[@id='G10126']//*[(@class='jstree-icon jstree-ocl')]",
          'pagination button #2' => "xpath^^.//*[(@data-test='2-button')]",
          'pagination button #1' => "xpath^^.//*[(@data-test='1-button')]",
          'expand icon for super group result' => "xpath^^.//*[(@id='S10001')]//*[(@class='jstree-icon jstree-ocl')]",
          'cluster search input search box' => "xpath^^.//*[(@data-test='cluster-search-keywords-input')]",
          'expand icon for lymphocyte phenotyping  - lad-1 blood' => "xpath^^.//*[@id='S10001|G10410']/i",
          'children for lymphocyte phenotyping  - lad-1 blood' => "xpath^^.//*[@id='S10001|G10410']/ul",

           #Vital Sign UFO
           'add vital signs button' => "xpath^^.//*[(@data-test='add-cluster-search-terms-button')]",
           'add vital signs search button' => "xpath^^.//*[(@data-test='cluster-search-search-button')]",
           'cluster: temperature term search results' => "xpath^^.//*[(@data-test='red-node red-node-E7075')]",
           'cluster: search term results' => "xpath^^.//*[(@tabindex='-1')]",
           'cluster result' => "xpath^^.//*[(@class='jstree-anchor')]",
           'respiratory depth' => "xpath^^.//*[(@tabindex='-1')]",







      }
end