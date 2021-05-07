def map_resource
  @page_objects['resource'] =


      {
          #resource tab validation, Training.
          'resource dropdown' => "xpath^^.//*[@id='nav-resources-dropdown']",
          'resource on header' => "xpath^^.//*[@class='intranet-page-heading__title']",
          'training link' => "xpath^^.//*[@class='dropdown-item'][contains(text(), 'Training')]",
          'training page' => "xpath^^.//*[@class='intranet-subtitle'][contains(text(), 'Training')]",
          'training page header' => "xpath^^.//*[@class='intranet-page-heading__tagline']",
          'training page topic header' => "xpath^^.//*[@class='resources-heading resources-heading--level-4']",
          'btris home' => "xpath^^.//*[@alt='BTRIS Logo']",
          #resource tab validation, References.
          'references link' => "xpath^^.//*[@class='dropdown-item'][contains(text(), 'References')]",
          'references page' => "xpath^^.//*[@class='intranet-subtitle'][contains(text(), 'References')]",
          #resource tab validation, User Guides.
          'user guides link' => "xpath^^.//*[@class='dropdown-item'][contains(text(), 'User Guides')]",
          'user guides page' => "xpath^^.//*[@class='intranet-subtitle'][contains(text(), 'User Guides')]",
          #resource tab validation, Tutorials.
          'tutorials link' => "xpath^^.//*[@class='dropdown-item'][contains(text(), 'Tutorials')]",
          'tutorials page' => "xpath^^.//*[@class='intranet-subtitle'][contains(text(), 'Tutorials')]",
          'tutorials all' => "xpath^^.//*[@class='router-link-exact-active router-link-active btn round btn-lg dataset-card-button active']",


      }
end