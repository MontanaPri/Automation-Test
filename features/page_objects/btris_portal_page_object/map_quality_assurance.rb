def map_quality_assurance
  @page_objects['quality_assurance'] =


      {
          #Save Reports.
          'primary nav quality assurance' => "xpath^^.//*[@data-test='primary-nav-quality-assurance']",
          'quality assurance page header' => "xpath^^.//*[@class='quality-assurance__header']//*[contains(text(), 'Protocols')]",




      }
end