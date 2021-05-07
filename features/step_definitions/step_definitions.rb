Then(/^the user cannot see "(.*)" field on "(.*)" page$/) do |field_name, page_name|
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector, element_path = get_element_target(field_name, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{field_name} in #{page_name} page objects File")
  end
  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{field_name} in #{page_name} page objects File")
  end
  selector = (selector.downcase.include? 'xpath') ? :xpath : :css

  e = @browser.select selector, element_path
  if e.exists?
  else
    fail('fail')
  end
end

# Then(/^the user see "(.*)" field is "(.*)" on "(.*)" page$/) do |field, attribute, page|
#   e = get_element page, field
#   xpath = @session.page_objects.web_element_xpath page, field
#   e = @session.browser.element :xpath, xpath
#   if e.wait_until_present.exists?
#     field_attr = e.enabled?
#     if attribute.downcase.eql? 'enabled'
#       checkpoint((field_attr.eql? true), "Failed: #{field} is not Enabled on #{page} page")
#     else
#       if attribute.downcase.eql? 'disabled'
#         checkpoint((field_attr.eql? false), "Failed: #{field} is not Disabled on #{page} page")
#       end
#     end
#   else
#     fail("Failed: #{field} is not present on #{page} page")
#   end
# end

# Then(/^the user adds a new poultry record for subclass-"([^"]*)";lotnumnber-"([^"]*)";headcount-"([^"]*)";liveweight-"([^"]*)";certifiedChilledWeight-"([^"]*)";certifiedFrozenWeight-"([^"]*)";deadOnArrivalHeadCount-"([^"]*)";deadOnArrivalWeight-"([^"]*)";aMCNIDOAsHeadCount-"([^"]*)";aMCNIDOAsWeight-"([^"]*)";pMCCNYDWeight-"([^"]*)";pMCPartsWeights-"([^"]*)" page$/) do |subclass,lotnumnber,headcount,liveweight,certifiedChilledWeight,certifiedFrozenWeight,deadOnArrivalHeadCount,deadOnArrivalWeight,aMCNIDOAsHeadCount,aMCNIDOAsWeight,pMCCNYDWeight,pMCPartsWeights|
# # |subclass, lotnumnber, headcount, liveweight, certifiedCchilledweight, certifiedfrozenweight, deadOnarrivalheadCount, deadOnarrivalweight, amcnidoAsHeadCount, aMCNIDOAsWeight, pMCCNYDWeight, pMCPartsWeights |
#
#   # #Locate the Sub Class drop-down and select a sub-class.
#   step "the user selects \"subclass\" from \"sub class drop down for poultry\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Locate the Lot Number Text box and enter data.
#   step "the user types \"lotnumnber\" into \"lot number text box for poultry\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter Head Count.
#   step "the user types \"headcount\" into \"head count text box for poultry\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter Live Weight.
#   step "the user types \"liveweight\" into \"live weight text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter CC Weight.
#   step "the user types \"certifiedChilledWeight\" into \"certified chiled weight text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter CF Weight.
#   step "the user types \"certifiedFrozenWeight\" into \"certified frozen weight text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter DOA head count.
#   step "the user types \"deadOnArrivalHeadCount\" into \"dead on arrival head count text box\ on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter DOA Weight.
#   step "the user types \"deadOnArrivalWeight\" into \"dead on arrival weight text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter Ante-mortem condemned not including DOAs (Head Count).
#   step "the user types \"aMCNIDOAsHeadCount\" into \"ante-mortem condemned not including doas head count text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter Ante-mortem condemned not including DOAs (Weight).
#   step "the user types \"aMCNIDOAsWeight\" into \"ante-mortem condemned not including doas weight text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter Post-mortem Condemned Carcass NYD (Weight).
#   step "the user types \"pMCCNYDWeight\" into \"post-mortem condemned carcass nyd weight text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter Post-mortem Condemned Parts (Weight).
#   step "the user types \"pMCPartsWeights\" into \"post-mortem condemned parts weight text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#
# end


And(/^the user deletes existing poultry records if any$/) do
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_PoultryClassSummaryControl_rgPoultrySlaughter']"
  check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
  if check_record_present > 2
    # Delete all slaughter record with given sub class in table
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr[@class='rgRow']"
    (1..table_rows).each do |rows|
      #sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[2]"
      #if sub_class_value.downcase.eql? sub_class.downcase
      element_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[10]/button"
      click_web_element element_obj
      ok_btn_obj = 'xpath', ".//*[contains(text(),'OK')]"
      click_web_element ok_btn_obj
      sleep 3
    end
  end
end

And(/^the user delete existing meat record if any exist$/) do
  if step "the user clicks on \"delete icon for meat\" element on \"DispositionReporting/EstablishmentReporting\" page"
    # And the user clicks on "Animal Disposition" element on "FSISDashBoard/Default" page
    step 'the user dismisses browser pop-ups'
  else
    puts 'there are no record/s to delete.'
  end
end

And(/^the user delete Slaughter Record with if present$/) do
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00']"
  # Delete all slaughter record with given sub class in table
  check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
  if check_record_present > 2
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr[@class='rgRow']"
    (1..table_rows).each do |rows|
      # sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[2]"
      # if sub_class_value.downcase.eql? sub_class.downcase
      del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[10]/input"
      click_web_element del_obj
      step 'the user dismisses browser pop-ups'
      sleep 2
      # end
    end
  end
end


And(/^the user delete Slaughter Record with "(.*)" sub-class if present$/) do |sub_class|
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00']"
  # Delete all slaughter record with given sub class in table
  check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
  if check_record_present > 2
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr[@class='rgRow']"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[2]"
      if sub_class_value.downcase.eql? sub_class.downcase
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[10]/input"
        click_web_element del_obj
        step 'the user dismisses browser pop-ups'
        sleep 2
      end
    end
  end
end

And(/^user dismisses questionnaire pop\-ups$/) do
  (1..10).each do
    begin
      if @browser.alert.exists?
        @browser.alert.accept
      end
      break
    rescue
      sleep 1
      nil
      next
    end
  end
end

And(/^the user deletes existing record if any$/) do
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter']"
  check_record_present = get_elements_size 'xpath', "#{table_path}/table/tbody/tr/td"
  if check_record_present > 2
    # Delete all slaughter record with given sub class in table
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/table/tbody/tr[@class='rgRow']"
    (1..table_rows).each do |rows|
      #sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[2]"
      #if sub_class_value.downcase.eql? sub_class.downcase
      del_obj = get_element_obj 'xpath', "#{table_path}/table/tbody/tr[@class='rgRow']//button"
      click_web_element del_obj
      ok_conf_obj = get_element_obj 'xpath', ".//*[contains(text(),'OK')]"
      click_web_element ok_conf_obj
      sleep 4
    end
  end
end


And(/^user accept browser pop\-ups$/) do
  if @browser.alert.exists?
    @browser.alert.ok
  else
    puts 'No pop up to close or accept, all good'
  end
end

And(/^the user delete existing ratite record if any$/) do
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter']"
  check_record_present = get_elements_size 'xpath', "#{table_path}/table/tbody/tr/td"
  if check_record_present > 2
    # Delete all slaughter record with given sub class in table
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/table/tbody/tr[@class='rgRow']"
    (1..table_rows).each do |rows|
      #sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[2]"
      #if sub_class_value.downcase.eql? sub_class.downcase
      del_obj = get_element_obj 'xpath', "#{table_path}/table/tbody/tr[@class='rgRow'][#{rows}]/td[10]/button"
      click_web_element del_obj
      ok_conf_obj = get_element_obj 'xpath', ".//*[contains(text(),'OK')]"
      click_web_element ok_conf_obj
      sleep 7
    end
  end
end

And(/^the user deletes existing poultry record if any$/) do
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_PoultryClassSummaryControl_rgPoultrySlaughter']"
  check_record_present = get_elements_size 'xpath', "#{table_path}/table/tbody/tr/td"
  if check_record_present > 2
    # Delete all slaughter record with given sub class in table
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/table/tbody/tr"
    (1..table_rows).each do |rows|
      #sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[2]"
      #if sub_class_value.downcase.eql? sub_class.downcase
      del_obj = get_element_obj 'xpath', "#{table_path}/table/tbody/tr//button"
      click_web_element del_obj
      ok_conf_obj = get_element_obj 'xpath', ".//*[contains(text(),'OK')]"
      click_web_element ok_conf_obj
      sleep 4
    end
  end
end


And(/^the user print condemnation certificate for meat$/) do
  page_name = 'DispositionReporting/EstablishmentReporting'
  element = 'select all link'
  element1 = 'un select all link'
  element2 = 'cancel button iframe'
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector1, element_path1 = get_element_target(element, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element} in #{page_name} page objects File")
  end
  if selector1.nil? || element_path1.nil?
    fail("Element Xpath is not found for #{element} in #{page_name} page objects File")
  end
  selector1 = (selector1.downcase.include? 'xpath') ? :xpath : :css

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector2, element_path2 = get_element_target(element1, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element1} in #{page_name} page objects File")
  end
  if selector2.nil? || element_path2.nil?
    fail("Element Xpath is not found for #{element1} in #{page_name} page objects File")
  end
  selector2 = (selector2.downcase.include? 'xpath') ? :xpath : :css
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector3, element_path3 = get_element_target(element2, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element2} in #{page_name} page objects File")
  end
  if selector3.nil? || element_path3.nil?
    fail("Element Xpath is not found for #{element2} in #{page_name} page objects File")
  end
  selector3 = (selector3.downcase.include? 'xpath') ? :xpath : :css

  # xpath_element = @session.page_objects.web_element_xpath page, element
  # xpath_element1 = @session.page_objects.web_element_xpath page, element1
  # xpath_element2 = @session.page_objects.web_element_xpath page, element2
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element).click
  # step "the user waits \"3\" seconds"
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element1).click
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element2).click
  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path1).click
  # step "the user waits \"3\" seconds"
  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path2).click
  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path3).click
end

And(/^the user switch to main tab$/) do
  # @session.browser.switch_to
  @browser.driver.switch_to
end

And(/^the user print disposition records for meat$/) do
  page_name = 'DispositionReporting/EstablishmentReporting'
  element = 'select all link for disposition record'
  element1 = 'un select all link for disposition record'
  element2 = 'sort column iframe for disposition record'
  element3 = 'cancel button iframe'
  # xpath_element = @session.page_objects.web_element_xpath page, element
  # xpath_element1 = @session.page_objects.web_element_xpath page, element1
  # xpath_element2 = @session.page_objects.web_element_xpath page, element2
  # xpath_element3 = @session.page_objects.web_element_xpath page, element3
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element).click
  # step "the user waits \"3\" seconds"
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element1).click
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element2).click
  # step "the user waits \"3\" seconds"
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element3).click

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector, element_path = get_element_target(element, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element} in #{page_name} page objects File")
  end
  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{element} in #{page_name} page objects File")
  end
  selector = (selector.downcase.include? 'xpath') ? :xpath : :css

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector1, element_path1 = get_element_target(element1, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element1} in #{page_name} page objects File")
  end
  if selector1.nil? || element_path1.nil?
    fail("Element Xpath is not found for #{element1} in #{page_name} page objects File")
  end
  selector1 = (selector1.downcase.include? 'xpath') ? :xpath : :css
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector2, element_path2 = get_element_target(element2, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element2} in #{page_name} page objects File")
  end
  if selector2.nil? || element_path2.nil?
    fail("Element Xpath is not found for #{element2} in #{page_name} page objects File")
  end
  selector2 = (selector2.downcase.include? 'xpath') ? :xpath : :css

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector3, element_path3 = get_element_target(element3, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element3} in #{page_name} page objects File")
  end
  if selector3.nil? || element_path3.nil?
    fail("Element Xpath is not found for #{element3} in #{page_name} page objects File")
  end
  selector3 = (selector3.downcase.include? 'xpath') ? :xpath : :css

  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path).click
  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path1).click
  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path2).click
  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path3).click

end

And(/^the user print condemnation certificate for ratite$/) do
  page_name = 'DispositionReporting/EstablishmentReporting'
  element = 'select all link for ratite record'
  element1 = 'un select all link for ratite record'
  element2 = 'cancel button iframe for ratite record'
  # xpath_element = @session.page_objects.web_element_xpath page, element
  # xpath_element1 = @session.page_objects.web_element_xpath page, element1
  # xpath_element2 = @session.page_objects.web_element_xpath page, element2
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element).click
  # step "the user waits \"3\" seconds"
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element1).click
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element2).click
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector1, element_path1 = get_element_target(element, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element} in #{page_name} page objects File")
  end
  if selector1.nil? || element_path1.nil?
    fail("Element Xpath is not found for #{element} in #{page_name} page objects File")
  end
  selector1 = (selector1.downcase.include? 'xpath') ? :xpath : :css

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector2, element_path2 = get_element_target(element1, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element1} in #{page_name} page objects File")
  end
  if selector2.nil? || element_path2.nil?
    fail("Element Xpath is not found for #{element1} in #{page_name} page objects File")
  end
  selector2 = (selector2.downcase.include? 'xpath') ? :xpath : :css
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector3, element_path3 = get_element_target(element2, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element2} in #{page_name} page objects File")
  end
  if selector3.nil? || element_path3.nil?
    fail("Element Xpath is not found for #{element2} in #{page_name} page objects File")
  end
  selector3 = (selector3.downcase.include? 'xpath') ? :xpath : :css

  # xpath_element = @session.page_objects.web_element_xpath page, element
  # xpath_element1 = @session.page_objects.web_element_xpath page, element1
  # xpath_element2 = @session.page_objects.web_element_xpath page, element2
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element).click
  # step "the user waits \"3\" seconds"
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element1).click
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element2).click
  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path1).click
  # step "the user waits \"3\" seconds"
  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path2).click
  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path3).click

end

And(/^the user print disposition records for raite$/) do
  page_name = 'DispositionReporting/EstablishmentReporting'
  element = 'select all link for disposition record for ratite'
  element1 = 'un select all link for disposition record for ratite'
  element2 = 'sort column iframe for disposition record for ratite'
  element3 = 'cancel button iframe for ratite record'
  # xpath_element = @session.page_objects.web_element_xpath page, element
  # xpath_element1 = @session.page_objects.web_element_xpath page, element1
  # xpath_element2 = @session.page_objects.web_element_xpath page, element2
  # xpath_element3 = @session.page_objects.web_element_xpath page, element3
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element).click
  # step "the user waits \"3\" seconds"
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element1).click
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element2).click
  # step "the user waits \"3\" seconds"
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element3).click
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector, element_path = get_element_target(element, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element} in #{page_name} page objects File")
  end
  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{element} in #{page_name} page objects File")
  end
  selector = (selector.downcase.include? 'xpath') ? :xpath : :css

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector1, element_path1 = get_element_target(element1, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element1} in #{page_name} page objects File")
  end
  if selector1.nil? || element_path1.nil?
    fail("Element Xpath is not found for #{element1} in #{page_name} page objects File")
  end
  selector1 = (selector1.downcase.include? 'xpath') ? :xpath : :css
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector2, element_path2 = get_element_target(element2, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element2} in #{page_name} page objects File")
  end
  if selector2.nil? || element_path2.nil?
    fail("Element Xpath is not found for #{element2} in #{page_name} page objects File")
  end
  selector2 = (selector2.downcase.include? 'xpath') ? :xpath : :css

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector3, element_path3 = get_element_target(element3, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element3} in #{page_name} page objects File")
  end
  if selector3.nil? || element_path3.nil?
    fail("Element Xpath is not found for #{element3} in #{page_name} page objects File")
  end
  selector3 = (selector3.downcase.include? 'xpath') ? :xpath : :css

  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path).click
  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path1).click
  # step "the user waits \"3\" seconds"
  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path2).click
  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path3).click

end

# And (/^the user types in to an empty text box or upload "([^"]*)" into "([^"]*)" on "([^"]*)" page$/) do |value, element, page|
#   types_into_element page, element, value
# end


And(/^the user deletes any existing added documents for a country$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_UploadDocuments_rgUploadDocuments_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
      new_document = "Automation_Test_Doc.pdf"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[5]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        # sleep 4r7y,o
      end
    end
    checkpoint (record_found.eql? true), "No document found in table that matches the document to be deleted"
  end
end

And(/^the user delete all existing collection$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radRuleCollections_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      new_collection = "Automation_Test_Date112"
      if delete_icons_row.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[7]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be deleted"
  end
end

And(/^the user click on the added rule collection to be edited$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radRuleCollections_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      new_collection = "Automation_Test_Date112"
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[6]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end

And(/^the user click on the added validator record to be edited$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radValidatorCollections_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      new_collection = "Automation_Test_Date112 Automation Test Description data."
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[8]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end

And(/^the user delete validator records created by test$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radValidatorCollections_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      new_collection = "Automation_Test_Date112 Automation Test Description data."
      if delete_icons_row.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[11]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be deleted"
  end
end

And(/^user refresh the browser$/) do
  @browser.refresh
end

And(/^the user perform the enter key command$/) do
  @browser.send_keys :enter
end

And(/^the user click on the added instruction to be edited$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radInstructionCollections_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      puts 'the newly added instruction is ' + sub_class_value
      new_collection = "Automation_Test_Instruction101 Automation Test Description data11."
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[8]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end

And(/^the user delete the added instruction records created by test$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radInstructionCollections_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      new_collection = "Automation_Test_Instruction101 Automation Test Description data11."
      if delete_icons_row.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[11]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be deleted"
  end
end

And(/^the user click on the approve icon for the submitted validator to be approve$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radApproval_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[4]"
      new_collection = "Automation_Test_Date112"
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[6]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end

And(/^the user click on the reject icon for the submitted validator to be rejected/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radApproval_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[4]"
      new_collection = "Automation_Test_Date112"
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[7]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end


And(/^the user click on the approve icon for the submitted instruction to be approved/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radApproval_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[4]"
      new_collection = "Automation_Test_Instruction101"
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[6]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end

And(/^the user delete approved instruction records created by test$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radInstructionCollections_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      new_collection = "Automation_Test_Instruction101 Automation Test Description data11."
      if delete_icons_row.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[11]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be deleted"
  end
end

And(/^the user click on the reject icon for the submitted instruction record to be rejected/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radApproval_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[4]"
      new_collection = "Automation_Test_Instruction101"
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[7]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end

And(/^the user delete rejected instruction records created by test$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radInstructionCollections_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      new_collection = "Automation_Test_Instruction101 Automation Test Description data11."
      if delete_icons_row.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[11]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be deleted"
  end
end

And(/^the user click on the edit icon for the country assign$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rdgReferenceTableDetails_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[4]"
      new_collection = "ANDORRA"
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end

And(/^the user click on the home icon for the Hillside Turkey Farm$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_Establishment_MyEstablishments_gridUserEstablishments_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      new_collection = "Hillside Turkey Farm"
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end

And(/^the user click on the edit icon for the application started$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radGrid9060Applications_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      new_collection = "Hillside Turkey Farm"
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[10]/a[1]/img"
        #Wait for element to be exist, visible,present and enabled
        wait_for_element(del_obj)
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end

And(/^the user click on the delete icon for the application started$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radGrid9060Applications_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      new_collection = "Hillside Turkey Farm"
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[12]/a/img"
        #Wait for element to be exist, visible,present and enabled
        wait_for_element(del_obj)
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end

And(/^the user clicks on the open icon for validator records created by test$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radValidatorCollections_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      new_collection = "Automation_Test_Date112 Automation Test Description data."
      if delete_icons_row.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[9]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be deleted"
  end
end

And(/^the user click on the delete link for the added product$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgForm9060_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[5]"
      new_collection = "Delete"
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[5]/a"
        #Wait for element to be exist, visible,present and enabled
        wait_for_element(del_obj)
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end


And(/^the user deletes existing instruction record if any$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgForm9060_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[5]"
      new_collection = "Delete"
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[5]/a"
        #Wait for element to be exist, visible,present and enabled
        wait_for_element(del_obj)
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end

And(/^the user click on the user to manage his or her role$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgUsers_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
      user_role = "Abdeen, Felicitas\ntest@test.com"
      if delete_icons_row.downcase.eql? user_role.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[5]//*[contains(@class, 'edit')]"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be managed"
  end
end

And(/^the user deletes any existing saa role added by the test$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ProfileRoles1_rgRoles_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      puts delete_icons_row
      new_document = "Service Account Administrator\n[MISC] No work areas were assigned."
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[5]/input[2]"
        click_web_element del_obj
        step "user accept browser pop-ups"
        # sleep 4r7y,o
      end
    end
    checkpoint (record_found.eql? true), "No document found in table that matches the document to be deleted"
  end
end

And(/^the user deletes any existing export viewer role added by the test$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ProfileRoles1_rgRoles_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      puts delete_icons_row
      new_document = "Export Viewer\n[MISC] No work areas were assigned."
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[5]/input[2]"
        click_web_element del_obj
        step "user accept browser pop-ups"
        # sleep 4r7y,o
      end
    end
    checkpoint (record_found.eql? true), "No document found in table that matches the document to be deleted"
  end
end

Then(/^the user click on accept on the warning message if applicable/) do
  record_found = false
  del_obj = get_element_text 'xpath', "//h2"
  puts del_obj
  new_collection = "Conditions of Use and Code of Conduct"
  if del_obj.eql? new_collection.downcase
    record_found = true
    #@browser.refresh
    accept_button = get_element_obj 'xpath', ".//*[contains(@data-test, 'accept-conditions-of-use-button')]"
    wait_for_element(accept_button)
    focus_on_element(accept_button)
    accept_button.click
    step "user accept browser pop-ups"
  end
  checkpoint (record_found.eql? true), "the Conditions of Use and Code of Conduct section is either disabled or close"
end

Then(/^the user logged out of the system/) do
  if ENV['TEST_ENV'].downcase.eql? 'test_mobile'
    puts ("Executing Environment is : #{ENV['TEST_ENV']}")
    step "the user clicks on \"nav bar in mobile\" element on \"Btris/Portal\" page"
    step "the user clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
    #step "the user clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
    step "the user clicks on \"btris: logout\" element on \"Btris/Portal\" page"
  else
    if ENV['TEST_ENV'].downcase.eql? 'prod_mobile'
      puts ("Executing Environment is : #{ENV['TEST_ENV']}")
      step "the user focus and clicks on \"nav bar in mobile\" element on \"Btris/Portal\" page"
      step "the user focus and clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
      #step "the user focus and clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
      step "the user focus and clicks on \"btris: logout\" element on \"Btris/Portal\" page"
    else
      puts ("Test is not running in mobile emulator, Executing Environment is : #{ENV['TEST_ENV']}")
      sleep 2
      step "the user clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
      step "the user clicks on \"btris: logout\" element on \"Btris/Portal\" page"
    end
  end
end

And(/^the user click on the radiology record to verify the image$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, INNA NMN"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]/a"
        puts 'Note! these are test data not actual data, the pulmonary Results are ' + del_obj
        step "user accept browser pop-ups"
        # sleep 4r7y,o
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the report to be open"
  end
end

And(/^the user enters "([^"]*)" and "([^"]*)" to login to btris$/) do |value1, value2,|
  step "the user clicks on \"btris home: login button\" element on \"Btris/Portal\" page"
  step "the user enters \"#{value1}\" into \"btris: user name\" on \"Btris/Portal\" page"
  step "the user enters \"#{value2}\" into \"btris: password\" on \"Btris/Portal\" page"
  step "the user clicks on \"btris: login to dashboard button\" element on \"Btris/Portal\" page"
end

And(/^the user verify the NIAAA report on the table$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "ADEBISI, BALARAMA OLUFEMI"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        #del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        #puts 'Note! These are test data and not actual data, the Laboratory Results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end

And(/^the user verify the NIAAA prod protocol report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "ALLEN, JACKIE TYRONE"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        #del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        #puts 'Note! These are test data and not actual data, the Laboratory Results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end

And(/^the user verify the laboratory report on the table$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, INNA NMN"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        puts 'Note! These are test data and not actual data, the Laboratory Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end

And(/^the user verify the pagination on the report table$/) do
  sleep 3
  record_found = false
  table_path = ".//*[@data-test='records-top-pagination']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//*[contains(@data-test, 'button')]"
  if check_record_present > 1
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}//*[contains(@data-test, 'button')]"
    puts table_rows
    (1..table_rows).each do |rows|
      #delete_icons_row = get_element_text 'xpath', "#{table_path}//*[contains(@data-test, 'button')]"
      #puts 'the row number is ' +delete_icons_row
      # new_document = "1"
      # if delete_icons_row.downcase.eql? new_document.downcase
      #record_found = true
      del_obj = get_element_text 'xpath', "#{table_path}//*[contains(@data-test, 'next-button')]"
      puts 'Note! These are test data and not actual data, the Laboratory Results are ' + del_obj
      click_web_element (del_obj)
    end
  end
  checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
end


And(/^the user verify the laboratory prod report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "ANDERSON, STEPHEN FOSTER"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        puts 'Note! These are test data and not actual data, the Laboratory Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end

And(/^the user verify the new laboratory report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, INNA NMN"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        puts 'Note! These are test data and not actual data, the the Laboratory Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end


And(/^the user verify the diagnosis and procedure report on the table$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, INNA NMN"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! this is a test data and not actual data, the diagnosis Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the Diagnosis and Procedure search"
  end
end

And(/^the user verify the diagnosis and procedure prod report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "ADETOLA, OLUKEMI OLUKEYE"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! this is a test data and not actual data, the diagnosis Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the Diagnosis and Procedure search"
  end
end

And(/^the user verify the diagnosis and procedure report on the table 2$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, INNA NMN"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! this is a test data and not actual data, the Demographics Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the Demographics search"
  end
end

And(/^the user test the pagination of the report$/) do
  sleep 3
  if pagination_path = ".//*[@data-test='records-top-pagination']"
    check_record_present = get_elements_size 'xpath', "#{pagination_path}//li"
    if check_record_present > 2
      table_rows = get_elements_size 'xpath', "#{pagination_path}//li"
      puts "total pegination is" + check_record_present
      (1..table_rows).each do |rows|
        del_obj = get_element_obj 'xpath', "#{pagination_path}//li"
        click_web_element del_obj

        # ok_conf_obj = get_element_obj 'xpath', ".//*[contains(text(),'OK')]"
        # click_web_element ok_conf_obj
        sleep 5
      end
    else
      puts 'No pagination available for this report, report loads on a single page'
    end
  end
end



And(/^the user click to open the pagination of the report$/) do
  record_found = false
  table_path = ".//*[@class='pagination pagination-sm justify-content-center']//*[@class='page-item']"
  check_record_present = get_elements_size 'xpath', "#{table_path}"
  if check_record_present > 2
    table_rows = get_elements_size 'xpath', "#{table_path}"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}//*[contains(@class, 'page-link')]"
      puts 'the row number is ' +delete_icons_row
      if table_rows > 2
        record_found = true
        del_obj = get_element_obj 'xpath', ".//*[contains(@data-test, 'next-button')]//*[contains(@class, 'page-link')]"
        click_web_element del_obj
        step "the user remembers the value of \"reports results\" field into \"Loaded Report\" on \"Btris/Portal\" page"
        sleep 3
      end
    end
    checkpoint (record_found.eql? true), "No pagination found"
  end
end





And(/^the user verify the demographics report on the table$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, INNA NMN"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! this is a test data and not actual data, the Demographics Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the Demographics search"
  end
end

And(/^the user verify the demographics prod report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "BEATON, BRADFORD TAYLOR"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! this is a test data and not actual data, the Demographics Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the Demographics search"
  end
end


And(/^the user verify the assessment report report on the table$/) do
  record_found = false
  table_path = ".//*/div[1]/div/div/div/table"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "ADEBISI, BALARAMA OLUFEMI"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        #del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        # puts 'the MRN for the Laboratory Results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the search"
  end
end

And(/^the user click on the accept button if present$/) do
  record_found = false
  table_path = ".//*[@id='app']/div/div[1]/section[1]/div/div/div[1]/div/div/div[3]/div/button"
  check_record_present = get_elements_size 'xpath', "#{table_path}"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}"
    #puts 'the button is ' +table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}"
      #puts 'the button text is is ' +delete_icons_row
      new_document = "Accept"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}"
        click_web_element del_obj
        # sleep 4
      end
    end
    checkpoint (record_found.eql? true), "The Accept button or condition section is not enabled, all good"
  end
end

And(/^the user verify the clinical documents discrete values report on the table$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, PATIENT EIGHT INPAT"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! these are test data not actual data, the validated diagnosis Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in report table that matches the search criteria"
  end
end

And(/^the user verify the clinical documents discrete values "(.*)" actual report on the table$/) do |value|
  sleep 5
  page_text = @browser.html
  if page_text.include? value
    puts "Search criteria return message #{value} ,for the search query"
  else
    record_found = false
    table_path = ".//*[contains(@data-test, 'results-preview-table')]"
    check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
    if check_record_present > 2
      #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
      table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
      puts table_rows
      (1..table_rows).each do |rows|
        delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        #puts 'the row number is ' +delete_icons_row
        new_document = "BOWEN, JEANNE DOLORES"
        if delete_icons_row.downcase.eql? new_document.downcase
          record_found = true
          del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
          puts 'Note! these are test data not actual data, the validated diagnosis Results are ' + del_obj
        end
      end
      checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
    end
  end
end

Then(/^the user login to the btris application/) do
  step "the user remembers the value of \"btris login page\" field into \"Login Page\" on \"Btris/Portal\" page"
  step "the user clicks on \"btris: login button\" element on \"Btris/Portal\" page"
  step "the user remembers the value of \"user name attribute\" field into \"UserName\" on \"Btris/Portal\" page"
  step "the user enters \"btris_test2\" into \"btris: user name\" on \"Btris/Portal\" page"
  step "the user enters \"Nomorecognos12~\" into \"btris: password\" on \"Btris/Portal\" page"
  step "the user clicks on \"btris: login to dashboard button\" element on \"Btris/Portal\" page"
end

Then(/^the user login with "(.*)" to the btris application/) do |value|
  Test_Password = "Nomorecognos12!"
  step "the user remembers the value of \"btris login page\" field into \"Login Page\" on \"Btris/Portal\" page"
  step "the user clicks on \"btris: login button\" element on \"Btris/Portal\" page"

  if ENV['TEST_ENV'].downcase.eql? 'test01'
    step "the user remembers the value of \"smart cart login page\" field into \"Smart Card Login\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"siteminder username\" field into \"UserName\" on \"Btris/Portal\" page"
    step "the user enters \"#{value}\" into \"siteminder username input\" on \"Btris/Portal\" page"
    step "the user enters \"#{Test_Password}\" into \"siteminder password input\" on \"Btris/Portal\" page"
    sleep 1
    step "the user clicks on \"siteminder sign in button\" element on \"Btris/Portal\" page"
    sleep 1
    page_text = @browser.html
    if page_text.include? "Authentication failed."
      Login_error_message = ".//*[@class='SectionHeader']"
      Login_error = get_element_text 'xpath', "#{Login_error_message}"
      puts (fail("Login Authentication failed in : #{ENV['TEST_ENV']} with user #{value}, please check the User Name and or Password and try again."))
    else
      if page_text.include? "User Not Found"
        Login_error_message = ".//*[@class='error-page__headline']"
        Login_error = get_element_text 'xpath', "#{Login_error_message}"
        puts (fail("Login Authentication failed in : #{ENV['TEST_ENV']}, with user: #{value}, with an Error Message: #{Login_error}, please check the User Name and or Password and try again."))
      end
    end
  else
    sleep 2
    page_text = @browser.html
    if page_text.include? "User Not Found"
      Login_error_message = ".//*[@class='error-page']"
      Login_error = get_element_text 'xpath', "#{Login_error_message}"
      puts (fail("Login Failed with Error message: #{Login_error}."))

    else
      if ENV['TEST_ENV'].downcase.eql? 'prod'
        step "the user remembers the value of \"smart cart login page\" field into \"Smart Card Login\" on \"Btris/Portal\" page"
        step "the user remembers the value of \"siteminder username\" field into \"UserName\" on \"Btris/Portal\" page"
        step "the user enters \"#{value}\" into \"siteminder username input\" on \"Btris/Portal\" page"
        step "the user enters \"#{Test_Password}\" into \"siteminder password input\" on \"Btris/Portal\" page"
        sleep 1
        step "the user clicks on \"siteminder sign in button\" element on \"Btris/Portal\" page"
        sleep 1
        page_text = @browser.html
        if page_text.include? "Authentication failed."
          Login_error_message = ".//*[@class='SectionHeader']"
          Login_error = get_element_text 'xpath', "#{Login_error_message}"
          puts (fail("Login Authentication failed in: #{ENV['TEST_ENV']} with user: #{value}, please check the User Name and or Password and try again."))
        else
          if page_text.include? "User Not Found"
            Login_error_message = ".//*[@class='error-page__headline']"
            Login_error = get_element_text 'xpath', "#{Login_error_message}"
            puts (fail("Login Authentication failed in: #{ENV['TEST_ENV']}, with user: #{value}, with an Error Message: #{Login_error}, please check the User Name and or Password and try again."))
          end
        end
      else
        sleep 2
        page_text = @browser.html
        if page_text.include? "User Not Found"
          Login_error_message = ".//*[@class='error-page']"
          Login_error = get_element_text 'xpath', "#{Login_error_message}"
          puts (fail("Login Failed with Error message: #{Login_error}, using user #{value} ."))
        else
          if ENV['TEST_ENV'].downcase.eql? 'dev'
            step "the user remembers the value of \"smart cart login page\" field into \"Smart Card Login\" on \"Btris/Portal\" page"
            step "the user remembers the value of \"siteminder username\" field into \"UserName\" on \"Btris/Portal\" page"
            step "the user enters \"#{value}\" into \"siteminder username input\" on \"Btris/Portal\" page"
            step "the user enters \"#{Test_Password}\" into \"siteminder password input\" on \"Btris/Portal\" page"
            sleep 1
            step "the user clicks on \"siteminder sign in button\" element on \"Btris/Portal\" page"
            sleep 1
            page_text = @browser.html
            if page_text.include? "Authentication failed."
              Login_error_message = ".//*[@class='SectionHeader']"
              Login_error = get_element_text 'xpath', "#{Login_error_message}"
              puts (fail("Login Authentication failed in: #{ENV['TEST_ENV']} with user: #{value}, please check the User Name and or Password and try again."))
            else
              if page_text.include? "User Not Found"
                Login_error_message = ".//*[@class='error-page__headline']"
                Login_error = get_element_text 'xpath', "#{Login_error_message}"
                puts (fail("Login Authentication failed in: #{ENV['TEST_ENV']}, with user: #{value}, with an Error Message: #{Login_error}, please check the User Name and or Password and try again."))
              end
            end
          else
            sleep 2
            page_text = @browser.html
            if page_text.include? "User Not Found"
              Login_error_message = ".//*[@class='error-page']"
              Login_error = get_element_text 'xpath', "#{Login_error_message}"
              puts (fail("Login Failed with Error message: #{Login_error}."))
            else
              sleep 2
              page_text = @browser.html
              if page_text.include? "User Not Found"
                Login_error_message = ".//*[@class='error-page']"
                Login_error = get_element_text 'xpath', "#{Login_error_message}"
              else

                if ENV['TEST_ENV'].downcase.eql? 'report_engine_test'
                  step "the user remembers the value of \"smart cart login page\" field into \"Smart Card Login\" on \"Btris/Portal\" page"
                  step "the user remembers the value of \"siteminder username\" field into \"UserName\" on \"Btris/Portal\" page"
                  step "the user enters \"#{value}\" into \"siteminder username input\" on \"Btris/Portal\" page"
                  step "the user enters \"#{Test_Password}\" into \"siteminder password input\" on \"Btris/Portal\" page"
                  sleep 1
                  step "the user clicks on \"siteminder sign in button\" element on \"Btris/Portal\" page"
                  sleep 1
                  page_text = @browser.html
                  if page_text.include? "Authentication failed."
                    Login_error_message = ".//*[@class='SectionHeader']"
                    Login_error = get_element_text 'xpath', "#{Login_error_message}"
                    puts (fail("Login Authentication failed in: #{ENV['TEST_ENV']} with user: #{value}, please check the User Name and or Password and try again."))
                  else
                    if page_text.include? "User Not Found"
                      Login_error_message = ".//*[@class='error-page__headline']"
                      Login_error = get_element_text 'xpath', "#{Login_error_message}"
                      puts (fail("Login Authentication failed in: #{ENV['TEST_ENV']}, with user: #{value}, with an Error Message: #{Login_error}, please check the User Name and or Password and try again."))
                    end
                  end
                else
                  sleep 2
                  page_text = @browser.html
                  if page_text.include? "User Not Found"
                    Login_error_message = ".//*[@class='error-page']"
                    Login_error = get_element_text 'xpath', "#{Login_error_message}"
                    puts (fail("Login Failed with Error message: #{Login_error}, using user #{value} ."))
                  else
                    puts (fail("Update login params for: #{ENV['TEST_ENV']}."))
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end


Then(/^the user login with "(.*)" to the BTRIS with personal account/) do |value|
  Test_Password = "Nomorecognos12!"

  step "the user remembers the value of \"btris login page\" field into \"Login Page\" on \"Btris/Portal\" page"
  step "the user clicks on \"btris: login button\" element on \"Btris/Portal\" page"

  if value.downcase.eql?("btris_test4")
    step "the user remembers the value of \"smart cart login page\" field into \"Smart Card Login\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"siteminder username\" field into \"UserName\" on \"Btris/Portal\" page"
    step "the user enters \"#{value}\" into \"siteminder username input\" on \"Btris/Portal\" page"
    step "the user enters \"#{Test_Password}\" into \"siteminder password input\" on \"Btris/Portal\" page"
    sleep 1
    step "the user clicks on \"siteminder sign in button\" element on \"Btris/Portal\" page"
    sleep 1
    page_text = @browser.html
    if page_text.include? "Authentication failed."
      Login_error_message = ".//*[@class='SectionHeader']"
      Login_error = get_element_text 'xpath', "#{Login_error_message}"
      puts (fail("Login Authentication failed in : #{ENV['TEST_ENV']} with user #{value}, please check the User Name and or Password and try again."))
    else
      if page_text.include? "User Not Found"
        Login_error_message = ".//*[@class='error-page__headline']"
        Login_error = get_element_text 'xpath', "#{Login_error_message}"
        puts (fail("Login Authentication failed in : #{ENV['TEST_ENV']}, with user: #{value}, with an Error Message: #{Login_error}, please check the User Name and or Password and try again."))
      end
    end
    sleep 2
    page_text = @browser.html
    if page_text.include? "User Not Found"
      Login_error_message = ".//*[@class='error-page']"
      Login_error = get_element_text 'xpath', "#{Login_error_message}"
      puts (fail("Login Failed with Error message: #{Login_error}."))
    end
  else
    if ENV['TEST_ENV'].downcase.eql? 'prod'
      step "the user remembers the value of \"smart cart login page\" field into \"Smart Card Login\" on \"Btris/Portal\" page"
      step "the user remembers the value of \"siteminder username\" field into \"UserName\" on \"Btris/Portal\" page"
      if value.downcase.eql?("ngunida")
        step "the user enters \"#{value}\" into \"siteminder username input\" on \"Btris/Portal\" page"
        step "the user enters \"Akanahelen@74045883\" into \"siteminder password input\" on \"Btris/Portal\" page"
        sleep 1
        step "the user clicks on \"siteminder sign in button\" element on \"Btris/Portal\" page"
      end
      sleep 1
      page_text = @browser.html
      if page_text.include? "Authentication failed."
        Login_error_message = ".//*[@class='SectionHeader']"
        Login_error = get_element_text 'xpath', "#{Login_error_message}"
        puts (fail("Login Authentication failed in: #{ENV['TEST_ENV']} with user: #{value}, please check the User Name and or Password and try again."))
      else
        if page_text.include? "User Not Found"
          Login_error_message = ".//*[@class='error-page__headline']"
          Login_error = get_element_text 'xpath', "#{Login_error_message}"
          puts (fail("Login Authentication failed in: #{ENV['TEST_ENV']}, with user: #{value}, with an Error Message: #{Login_error}, please check the User Name and or Password and try again."))
        end
      end
      sleep 2
      page_text = @browser.html
      if page_text.include? "User Not Found"
        Login_error_message = ".//*[@class='error-page']"
        Login_error = get_element_text 'xpath', "#{Login_error_message}"
        puts (fail("Login Failed with Error message: #{Login_error}, using user #{value} ."))
      end

    else
      if ENV['TEST_ENV'].downcase.eql? 'test01'
        step "the user remembers the value of \"smart cart login page\" field into \"Smart Card Login\" on \"Btris/Portal\" page"
        step "the user remembers the value of \"siteminder username\" field into \"UserName\" on \"Btris/Portal\" page"
        step "the user enters \"btris_test4\" into \"siteminder username input\" on \"Btris/Portal\" page"
        step "the user enters \"#{Test_Password}\" into \"siteminder password input\" on \"Btris/Portal\" page"
        sleep 1
        step "the user clicks on \"siteminder sign in button\" element on \"Btris/Portal\" page"
        sleep 1
        page_text = @browser.html
        if page_text.include? "Authentication failed."
          Login_error_message = ".//*[@class='SectionHeader']"
          Login_error = get_element_text 'xpath', "#{Login_error_message}"
          puts (fail("Login Authentication failed in : #{ENV['TEST_ENV']} with user #{value}, please check the User Name and or Password and try again."))
        else
          if page_text.include? "User Not Found"
            Login_error_message = ".//*[@class='error-page__headline']"
            Login_error = get_element_text 'xpath', "#{Login_error_message}"
            puts (fail("Login Authentication failed in : #{ENV['TEST_ENV']}, with user: #{value}, with an Error Message: #{Login_error}, please check the User Name and or Password and try again."))
          end
        end
        sleep 2
        page_text = @browser.html
        if page_text.include? "User Not Found"
          Login_error_message = ".//*[@class='error-page']"
          Login_error = get_element_text 'xpath', "#{Login_error_message}"
          puts (fail("Login Failed with Error message: #{Login_error}."))
          end
        else

          puts (fail("Update login params for: #{ENV['TEST_ENV']}."))
        end
      end
    end
  end



Then(/^the user login with "(.*)" to the btris application dev piv/) do |value|
  if value.downcase.eql?("btris_test2")
    puts 'The logged-in user name is ' + value
    step "the user remembers the value of \"btris login page\" field into \"Login Page\" on \"Btris/Portal\" page"
    step "the user clicks on \"btris: login button\" element on \"Btris/Portal\" page"
    step "the user remembers the value of \"smart cart login page\" field into \"Smart Cart Login\" on \"Btris/Portal\" page"
    step "the user clicks on \"alternative login link\" element on \"Btris/Portal\" page"
    step "the user remembers the value of \"user name attribute\" field into \"UserName\" on \"Btris/Portal\" page"
    step "the user enters \"#{value}\" into \"btris: user name\" on \"Btris/Portal\" page"
    step "the user enters \"Nomorecognos12~\" into \"btris: password\" on \"Btris/Portal\" page"
    step "the user clicks on \"btris: login to dashboard button\" element on \"Btris/Portal\" page"
  else
    if value.downcase.eql?("btris_test4")
      puts 'The logged-in user name is ' + value
      step "the user remembers the value of \"btris login page\" field into \"Login Page\" on \"Btris/Portal\" page"
      step "the user clicks on \"btris: login button\" element on \"Btris/Portal\" page"
      step "the user remembers the value of \"smart cart login page\" field into \"Smart Cart Login\" on \"Btris/Portal\" page"
      step "the user clicks on \"alternative login link\" element on \"Btris/Portal\" page"
      step "the user remembers the value of \"user name attribute\" field into \"UserName\" on \"Btris/Portal\" page"
      step "the user enters \"#{value}\" into \"btris: user name\" on \"Btris/Portal\" page"
      step "the user enters \"Nomorecognos12~\" into \"btris: password\" on \"Btris/Portal\" page"
      step "the user clicks on \"btris: login to dashboard button\" element on \"Btris/Portal\" page"
    end
  end
end


And(/^the user verify the nichd ctdb forms report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[4]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "ACHUKO, MAUREEN NGOZI"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        #del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        #puts 'the MRN for the diagnosis Results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the NICHD/CTDB Forms search"
  end
end

And(/^the user verify the nichd ctdb forms prod report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[4]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "ACHUKO, MAUREEN NGOZI"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        #del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        #puts 'the MRN for the diagnosis Results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the NICHD/CTDB Forms search"
  end
end

And(/^the user verify the nichd ctdb forms report on the table with all protocol$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "02-CH-0287"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        #del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        #puts 'the MRN for the diagnosis Results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the NICHD/CTDB Forms search"
  end
end

And(/^the user verify the pdf documents report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, PATIENT EIGHT INPAT"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        puts 'The PDF Documents report test subject record is available'
        # del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        # puts 'the MRN for the diagnosis Results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the NICHD/CTDB Forms search"
  end
end

And(/^the user verify the vital signs report on the table$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, ACUITYPLUS ONLY"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! these are test data and not actual data, the vital signs Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end

And(/^the user verify the vital signs prod report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "ANDERSON, STEPHEN FOSTER"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! these are test data and not actual data, the vital signs Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end


Then(/^the user fines the page HTML/) do
  puts("inspect: #{@browser.inspect}")
  puts("status : #{@browser.status}")
  puts("text   : #{@browser.text}")
  puts("html   : #{@browser.html}")
  @browser = get_browser
  puts @browser.html
  puts @browser
end


And(/^the user verify the medication report on the table with date range filter$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "BOWEN, JEANNE DOLORES"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
        puts 'Note! these are test data and not actual data, the test Results validated are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the medication search record"
  end
end


And(/^the user verify the medication report on the table$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, PATIENTG NMN"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
        puts 'Note! these are test data and not actual data, the test Results validated are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the medication search record"
  end
end

And(/^the user verify the medication prod report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "BOWEN, JEANNE DOLORES"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
        puts 'Note! these are test data and not actual data, the test Results validated are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the medication search record"
  end
end


And(/^the user verify the pulmonary report on the table$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    # puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, PHARMD ADULT"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        puts 'Note! these are test data not actual data, the pulmonary Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the pulmonary search record"
  end
end

And(/^the user verify the pulmonary prod report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    # puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "BUEL, MEREDITH SHOWERS"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        puts 'Note! these are test data not actual data, the pulmonary Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the pulmonary search record"
  end
end

And(/^the user verify the PFT Tests on "(.*)" data on "(.*)" page$/) do |field_name, page_name|
  # get the XPATH or CSS from page object file , Raises Error if not found
  begin
    selector, element_path = get_element_target(field_name, page_name).split('^^')
  rescue
    fail("The PFT Tests data is not found for #{field_name} in #{page_name} page objects File")
  end
  if selector.nil? || element_path.nil?
    fail("The PFT Tests data is not found for #{field_name} in #{page_name} page objects File")
  end
  selector = (selector.downcase.include? 'xpath') ? :xpath : :css
  # Create the Element object
  element_obj = @browser.element(selector, element_path)

  # Wait for element to be present
  wait_for_element(element_obj)
  # Focus on element to make it visible
  focus_on_element(element_obj)
  puts 'The The PFT Tests data is successfully display'

end

And(/^the user verify the clinical documents full text "(.*)" report on the table$/) do |value|
  sleep 5
  page_text = @browser.html
  if page_text.include? value
    puts "Search criteria return message #{value} ,for the search query"
  else
    record_found = false
    table_path = ".//*[contains(@data-test, 'results-preview-table')]"
    check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
    if check_record_present > 2
      #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
      table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
      #puts table_rows
      (1..table_rows).each do |rows|
        delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        #puts 'the row number is ' +delete_icons_row
        new_document = "ANDERSON, STEPHEN FOSTER"
        if delete_icons_row.downcase.include? new_document.downcase
          record_found = true
          #del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
          # puts 'the MRN for the diagnosis Results are ' +del_obj
        end
      end
      checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
    end
  end
end

And(/^the user verify the pathology report on the table$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    # puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, PATIENT LAB INPATIENT 1"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        #del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
        # puts 'the MRN for the Laboratory Results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the Pathology search subject"
  end
end

And(/^the user verify the pathology prod data report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    # puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "ALDERMAN, LEWIS NMN"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        #del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
        # puts 'the MRN for the Laboratory Results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the Pathology search subject"
  end
end


And(/^the user verify the ekg report on the table$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, INNA NMN"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! these are test data and not actual data, the Results table data are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the EKG search"
  end
end

And(/^the user verify the ekg report on the table with prod data$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "ANDERSON, STEPHEN FOSTER"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! these are test data and not actual data, the Results table data are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the EKG search"
  end
end


And(/^the user verify the ekg prod data report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "ANDERSON, STEPHEN FOSTER"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! these are test data and not actual data, the Results table data are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the EKG search"
  end
end

And(/^the user verify the microbiology report on the table$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, PATIENT LAB INPATIENT 1"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! these are test data and not actual data, the Microbiology Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end

And(/^the user verify the microbiology prod protocol report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "BENASSI, ANGELA NMN"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'The report result(s) is or are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end

And(/^the user verify the echocardiogram report on the table$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, PATIENT LAB INPAT DLM USE ONLY"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! these are test data and not actual data, the Echocardiogram  Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the Echocardiogram search"
  end
end

And(/^the user verify the echocardiogram prod report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "ARNETT, LINDA MAE"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! these are test data and not actual data, the Echocardiogram  Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the Echocardiogram search"
  end
end

And(/^the user verify if existing "(.*)" exist and remove it$/) do |value|
  sleep 2
  page_text = @browser.html
  if page_text.include? value
    step "the user clicks on \"custom search term check box\" element on \"Btris/Portal\" page"
    sleep 1
    #Click on the remove button.Scenario:
    step "the user clicks the link with text \"Remove\""
    #step "the user clicks on \"custom search term list remove button\" element on \"Btris/Portal\" page"
    sleep 2
    step "the user clicks on \"custom search term list confirm remove\" element on \"Btris/Portal\" page"
    step "the user must see \"Search term list removed\" text in \"search term list remove confirmation\" field on \"Btris/Portal\" page"
    step "the user remembers the value of \"list remove confirmation\" field into \"List Remove Confirmation\" on \"Btris/Portal\" page"
    Remove_Search_TermList = ".//*[contains(text(), 'Search term list removed')]"
    Remove_Search_TermList_Confirmation = get_element_text 'xpath', "#{Remove_Search_TermList}"
    if Remove_Search_TermList_Confirmation.include? "Search term list removed"
      step "the user must see \"Search term list removed\" text in \"search term list remove confirmation\" field on \"Btris/Portal\" page"
      puts "Search term list removed successfully"
    else
      puts (fail("The Search term list FAILED to be removed with ERROR, #{Remove_Search_TermList_Confirmation}"))
    end
    sleep 1
  else
    puts "No existing search term data name #{value} added by the test exist"
  end
end

And(/^the user verify if "(.*)" uploaded list succeeded and user is able to see the uploaded search term list$/) do |value|
  sleep 2
  page_text = @browser.html
  empty_message = "No search term lists found"
    if page_text.include? value
      puts "The upload list template, #{value} was uploaded successfully and shows up on the Search Term Lists table"
  else
    if page_text.include? empty_message
      puts (fail("The upload list template, #{value} was uploaded successfully but FAILED to show up on the Search Term Lists table"))
    end
  end
end

And(/^the user verify if existing "(.*)" data exist and remove it$/) do |value|
  sleep 2
  page_text = @browser.html
  if page_text.include? value
    sleep 2
    step "the user clicks on \"reference list: search list check box\" element on \"Btris/Portal\" page"
    sleep 2
    step "the user clicks the link with text \"Remove\""
    #step "the user clicks on \"custom search term list remove button\" element on \"Btris/Portal\" page"
    sleep 2
    step "the user clicks on \"custom search term list confirm remove\" element on \"Btris/Portal\" page"
    Remove_Reference_List = ".//*[contains(text(), 'Reference list removed')]"
    Remove_Reference_List_Confirmation = get_element_text 'xpath', "#{Remove_Reference_List}"
    if Remove_Reference_List_Confirmation.include? "Reference list removed"
      step "the user must see \"Reference list removed\" text in \"reference list remove confirmation\" field on \"Btris/Portal\" page"
      puts "Reference list removed removed successfully"
    else
      puts (fail("The Reference list FAILED to be removed with ERROR, #{Remove_Reference_List_Confirmation}"))
    end
  else
    puts "No existing #{value} added by the test exist which matches"
  end
end

And(/^the user verify if "(.*)" document already exist and if not user uploads new "(.*)" and continue$/) do |value1, attached_file_location|
  page_text = @browser.html
  if page_text.include? value1
    puts "Document with name #{value1} already exist in the system and will be use to complete the test"
  else
    sleep 2
    puts "Document with name #{value1} does not exist in the system a new document will be uploaded to complete the test"
    step "user attached \"#{attached_file_location}\" file into \"custom search term list: brows upload\" on \"Btris/Portal\" page"
    sleep 6
  end
end

And(/^the user verify the reference list "(.*)" radiology report on the table$/) do |value|
  sleep 5
  page_text = @browser.html
  if page_text.include? value
    puts "Search criteria return message #{value} , no record for the search filter"
  else
    record_found = false
    table_path = ".//*[contains(@data-test, 'results-preview-table')]"
    check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
    if check_record_present > 2
      #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
      table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
      #puts table_rows
      (1..table_rows).each do |rows|
        delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        # puts 'the row number is ' +delete_icons_row
        new_document = "NIHCCTEST, INNA NMN"
        if delete_icons_row.downcase.eql? new_document.downcase
          record_found = true
          del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
          #puts 'the Subject for the Reference Laboratory Results are ' +del_obj
        end
      end
      checkpoint (record_found.eql? true), "No data found in table that matches the radiology search"
    end
  end
end

And(/^the user verify the reference list "(.*)" laboratory report on the table$/) do |value|
  sleep 5
  page_text = @browser.html
  if page_text.include? value
    puts "Search criteria return message #{value} , no record for the search filter"
  else
    record_found = false
    table_path = ".//*[contains(@data-test, 'results-preview-table')]"
    check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
    if check_record_present > 2
      #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
      table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
      #puts table_rows
      (1..table_rows).each do |rows|
        delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        # puts 'the row number is ' +delete_icons_row
        new_document = "NIHCCTEST, PATIENT LAB OUTPAT DLM USE ONLY"
        if delete_icons_row.downcase.eql? new_document.downcase
          record_found = true
          del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
          #puts 'the Subject for the Reference Laboratory Results are ' +del_obj
        end
      end
      checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
    end
  end
end

And(/^the user verify radiology admin report "(.*)" on the table$/) do |value|
  sleep 5
  page_text = @browser.html
  if page_text.include? value
    puts "Search criteria return message #{value} ,for the search query"
  else
    record_found = false
    table_path = ".//*[contains(@data-test, 'results-preview-table')]"
    check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
    if check_record_present > 2
      #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
      table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
      #puts table_rows
      (1..table_rows).each do |rows|
        delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        # puts 'the row number is ' +delete_icons_row
        new_document = "AARON, EVAN CHRISTOPHER"
        if delete_icons_row.downcase.eql? new_document.downcase
          record_found = true
          del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
          puts 'the Subject for the Reference Laboratory Results are ' + del_obj
        end
      end
      checkpoint (record_found.eql? true), "No data found in table that matches the pathology search"
    end
  end
end


And(/^the user verify the reference list pathology report and "(.*)" on the table$/) do |value|
  sleep 5
  page_text = @browser.html
  if page_text.include? value
    puts "Search criteria return message #{value} ,for the search query"
  else
    record_found = false
    table_path = ".//*[contains(@data-test, 'results-preview-table')]"
    check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
    if check_record_present > 2
      #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
      table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
      #puts table_rows
      (1..table_rows).each do |rows|
        delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        # puts 'the row number is ' +delete_icons_row
        new_document = "NIHCCTEST, PATIENT LAB INPAT DLM USE ONLY"
        if delete_icons_row.downcase.eql? new_document.downcase
          record_found = true
          del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
          puts 'the Subject for the Reference Laboratory Results are ' + del_obj
        end
      end
      checkpoint (record_found.eql? true), "No data found in table that matches the pathology search"
    end
  end
end

And(/^the user verify the reference list vital sign report and "(.*)" on the table$/) do |value|
  sleep 5
  page_text = @browser.html
  if page_text.include? value
    puts "Search criteria return message #{value} , no record for the search filter"
  else
    record_found = false
    table_path = ".//*[contains(@data-test, 'results-preview-table')]"
    check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
    if check_record_present > 2
      #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
      table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
      #puts table_rows
      (1..table_rows).each do |rows|
        delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        # puts 'the row number is ' +delete_icons_row
        new_document = "NIHCCTEST, INNA NMN"
        if delete_icons_row.downcase.eql? new_document.downcase
          record_found = true
          del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
          puts 'the Subject for the Reference Laboratory Results are ' + del_obj
        end
      end
      checkpoint (record_found.eql? true), "No data found in table that matches the vital sign search"
    end
  end
end

And(/^the user verify the reference list pathology report and "(.*)" on the table 2$/) do |value|
  sleep 5
  page_text = @browser.html
  if page_text.include? value
    puts "Search criteria return message #{value} , no record for the search filter"
  else
    record_found = false
    table_path = ".//*[contains(@data-test, 'results-preview-table')]"
    check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
    if check_record_present > 2
      #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
      table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
      #puts table_rows
      (1..table_rows).each do |rows|
        delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        # puts 'the row number is ' +delete_icons_row
        new_document = "NIHCCTEST, PATIENT LAB INPAT DLM USE ONLY"
        if delete_icons_row.downcase.eql? new_document.downcase
          record_found = true
          del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
          puts 'the Subject for the Reference list Pathology Results are ' + del_obj
        end
      end
      checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
    end
  end
end

And(/^the user verify if MRN "(.*)" has already been added and "(.*)" is display$/) do |value, message|
  sleep 3
  page_text = @browser.html
  if page_text.include? message
    step "the user clicks on \"back arrow\" element on \"Manage/Subjects\" page"
    sleep 1
    step "the user enters \"#{value}\" into \"manage subject protocol text box\" on \"Manage/Subjects\" page"
    sleep 1
    step "the user clicks on \"delete protocol icon\" element on \"Manage/Subjects\" page"
    sleep 1
    step "the user clicks on \"remove button\" element on \"Manage/Subjects\" page"
    sleep 3
    step "the user clicks on \"add subject button\" element on \"Manage/Subjects\" page"
    sleep 1
    step "the user enters \"#{value}\" into \"enter mrn text box\" text area box on \"Manage/Subjects\" page"
    sleep 1
    step "the user clicks on \"submit button\" element on \"Manage/Subjects\" page"
    sleep 3
    #step "the user waits for \"3\" seconds"
  else
    # Fail the steps and skips next steps
    puts "The user didn't see error message, #{message} , text on the page which means the subject #{value} can be added"
  end
end

And(/^the user verify if MRN "(.*)" has not been added and "(.*)" is display$/) do |value, message|
  sleep 2
  page_text = @browser.html
  if page_text.include? message
    step "the user clicks on \"affirm consent button\" element on \"Manage/Subjects\" page"
    sleep 1
    step "the user clicks on \"return to subject button\" element on \"Manage/Subjects\" page"
    sleep 1
    step "the user clicks on \"add subject button\" element on \"Manage/Subjects\" page"
    sleep 1
    step "the user enters \"#{value}\" into \"enter mrn text box\" text area box on \"Manage/Subjects\" page"
    sleep 1
    step "the user clicks on \"submit button\" element on \"Manage/Subjects\" page"
    sleep 1
  else
    # Fail the steps and skips next steps
    puts "The user didn't see error message, #{message} , text on the page which means the subject #{value} already exist in the protocol"
  end
end


And(/^the user verify if the "(.*)" is display on the table for "(.*)" added$/) do |message, value|
  page_text = @browser.html
  if page_text.include? message
    puts "No subject found in table that matches the added subject #{value}"
  else
    puts "subject #{value}  was successfully added"
  end
end

And(/^the user verify the reference list vital signs report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      # puts 'the row number is ' +delete_icons_row
      new_document = "CAHILL, PATRICIA ANN MARIE"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        #puts 'the Subject for the Reference Laboratory Results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end


And(/^the user verify the reference list laboratory report on the table for S6$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      # puts 'the row number is ' +delete_icons_row
      new_document = "60"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Reference List Radiology Report Validated '
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end

And(/^the user verify the radiology administration report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "AARON, EVAN CHRISTOPHER"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        #del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        # puts 'the MRN for the searched test Results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the searched test search"
  end
end

And(/^the user verify the radiology administration report with image$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[6]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NM5000574218"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[6]/a"
        #puts 'the image number for the searched test Results are ' +del_obj
        click_web_element del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the searched test search"
  end
end

And(/^the user verify if existing subject "(.*)" data exist and remove it$/) do |value|
  page_text = @browser.html
  if page_text.include? value
    sleep 2
    step "the user clicks on \"subject list search check box\" element on \"Btris/Portal\" page"
    step "the user clicks on \"subject list remove button\" element on \"Btris/Portal\" page"
    step "the user clicks on \"subject list confirm remove\" element on \"Btris/Portal\" page"
    sleep 3
  else
    puts "The user didn't see #{value} text on page"
  end
end


And(/^the user click on the navigation bar if in mobile mode$/) do
  if ENV['TEST_ENV'].downcase.eql? 'test_mobile'
    puts ("Executing Environment is : #{ENV['TEST_ENV']}")
    step "the user clicks on \"nav bar in mobile\" element on \"Btris/Portal\" page"
  else
    if ENV['TEST_ENV'].downcase.eql? 'prod_mobile'
      puts ("Executing Environment is : #{ENV['TEST_ENV']}")
      step "the user clicks on \"nav bar in mobile\" element on \"Btris/Portal\" page"
    else
      step "the user remembers the value of \"top nav drop-down\" field into \"Drop Down\" on \"Btris/Portal\" page"
      puts ("Test is not running in mobile emulator, Executing Environment is : #{ENV['TEST_ENV']}")

    end
  end
end

And(/^the user click on the navigation bar on the home page if in mobile mode$/) do
  if ENV['TEST_ENV'].downcase.eql? 'test_mobile'
    puts ("Executing Environment is : #{ENV['TEST_ENV']}")
    step "the user clicks on \"homepage nav bar in mobile\" element on \"Btris/Portal\" page"
    step "the user clicks on \"resource dropdown\" element on \"Resource\" page"
  else
    if ENV['TEST_ENV'].downcase.eql? 'prod_mobile'
      puts ("Executing Environment is : #{ENV['TEST_ENV']}")
      step "the user clicks on \"homepage nav bar in mobile\" element on \"Btris/Portal\" page"
      step "the user clicks on \"resource dropdown\" element on \"Resource\" page"
    else
      step "the user clicks on \"resource dropdown\" element on \"Resource\" page"
      puts ("Test is not running in mobile emulator, Executing Environment is : #{ENV['TEST_ENV']}")

    end
  end
end


And(/^the user verify the report configuration with name "(.*)" on the Saved Reports table$/) do |value|
  record_found = false
  table_path = ".//*[@class='table saved-reports-table']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
       puts 'the row number is ' +delete_icons_row
      new_document = "#{value}"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}//*[@class='btn btn-med btn-primary']"
        click_web_element del_obj
        sleep 2
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the added Saved Reports Configuration"
  end
end

And(/^the user verify the report configuration with name "(.*)" if already exist on the Saved Reports table with "(.*)" and enter new "(.*)" and "(.*)" and verify if "(.*)" which is being added already exist$/) do |value1, value2, value3, value4, value5|
  page_text = @browser.html
  if page_text.include? value5
    step "the user clicks on \"report configuration cancel button\" element on \"Save/Reports\" page"
    step "the user clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
    step "the user clicks on \"save report on drop-down\" element on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"saved reports search field\" on \"Save/Reports\" page"
    step "the user remembers the value of \"demographic saved report\" field into \"Saved Reports Table\" on \"Save/Reports\" page"
    step "the user clicks on \"delete button for saved report\" element on \"Save/Reports\" page"
    step "the user clicks on \"confirm delete button for saved report\" element on \"Save/Reports\" page"
    step "the user clicks on \"primary nav active protocol\" element on \"Save/Reports\" page"
    step "the user clicks on \"close report icon\" element on \"Btris/Portal\" page"
    step "the user clicks on \"close button\" element on \"Btris/Portal\" page"
    step "the user remembers the value of \"general reports\" field into \"Criteria List\" on \"Btris/Portal\" page"
    step "the user clicks on \"demographics test report\" element on \"Btris/Portal\" page"
    #Click on the create new report button.
    step "the user clicks on \"btris: create new report button\" element on \"Btris/Portal\" page"
    #Enter and filter subject.
    step "the user enters \"#{value3}\" into \"fine protocol and subject search box\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"protocol verify count\" field into \"Number OF Subjects\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"selected protocol\" field into \"Protocol Number\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"protocol check button\" field into \"Protocol Checkbox\" on \"Btris/Portal\" page"
    step "the user focus and clicks on \"protocol check button\" element on \"Btris/Portal\" page"
    step "the user enters \"#{value4}\" into \"fine filter subject search box\" on \"Btris/Portal\" page"
    sleep 3
    #click on run report button.
    step "the user clicks on \"run report button\" element on \"Btris/Portal\" page"
    #Verify the demographic report table.
    step "the user remembers the value of \"reports results\" field into \"Loaded Report\" on \"Btris/Portal\" page"
    step "the user clicks on \"save report configuration button\" element on \"Save/Reports\" page"
    step "the user remembers the value of \"save report pop-up title\" field into \"Save Report Configuration\" on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
    step "the user must see \"Report name is required\" text in \"report configuration required message\" field on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"save report configuration name filed\" on \"Save/Reports\" page"
    step "the user enters \"#{value2}\" into \"save report configuration description box\" text area box on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
  else
    puts 'No record found that matches ' +value1
  end
end



And(/^the user verify the report configuration with name "(.*)" if already exist on the Saved Reports table with "(.*)" and enter new "(.*)" and "(.*)" and verify if "(.*)" which is being added already exist and edit it$/) do |value1, value2, value3, value4, value5|
  page_text = @browser.html
  if page_text.include? value5
    step "the user clicks on \"report configuration cancel button\" element on \"Save/Reports\" page"
    step "the user clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
    step "the user clicks on \"save report on drop-down\" element on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"saved reports search field\" on \"Save/Reports\" page"
    step "the user remembers the value of \"demographic saved report\" field into \"Saved Reports Table\" on \"Save/Reports\" page"
    step "the user delete added report with name \"Demographics\" on the Saved Reports table"
    # step "the user clicks on \"delete button for saved report\" element on \"Save/Reports\" page"
    # step "the user clicks on \"confirm delete button for saved report\" element on \"Save/Reports\" page"
    step "the user clicks on \"primary nav active protocol\" element on \"Save/Reports\" page"
    step "the user clicks on \"close report icon\" element on \"Btris/Portal\" page"
    step "the user clicks on \"close button\" element on \"Btris/Portal\" page"
    step "the user remembers the value of \"general reports\" field into \"Criteria List\" on \"Btris/Portal\" page"
    sleep 2
    step "the user clicks on \"demographics test report\" element on \"Btris/Portal\" page"
    #Click on the create new report button.
    step "the user clicks on \"btris: create new report button\" element on \"Btris/Portal\" page"
    #Enter and filter subject.
    step "the user enters \"#{value3}\" into \"fine protocol and subject search box\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"protocol verify count\" field into \"Number OF Subjects\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"selected protocol\" field into \"Protocol Number\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"protocol check button\" field into \"Protocol Checkbox\" on \"Btris/Portal\" page"
    step "the user focus and clicks on \"protocol check button\" element on \"Btris/Portal\" page"
    step "the user enters \"#{value4}\" into \"fine filter subject search box\" on \"Btris/Portal\" page"
    sleep 3
    #click on run report button.
    step "the user clicks on \"run report button\" element on \"Btris/Portal\" page"
    #Verify the demographic report table.
    step "the user remembers the value of \"reports results\" field into \"Loaded Report\" on \"Btris/Portal\" page"
    step "the user clicks on \"save report configuration button\" element on \"Save/Reports\" page"
    step "the user remembers the value of \"save report pop-up title\" field into \"Save Report Configuration\" on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
    step "the user must see \"Report name is required\" text in \"report configuration required message\" field on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"save report configuration name filed\" on \"Save/Reports\" page"
    step "the user enters \"#{value2}\" into \"save report configuration description box\" text area box on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
  else
    puts 'No record found that matches ' +value1
  end
end


And(/^the user verify Medication report configuration with name "(.*)" if already exist on the Saved Reports table with "(.*)" and enter new "(.*)" and "(.*)" and verify if "(.*)" which is being added already exist and edit it$/) do |value1, value2, value3, value4, value5|
  page_text = @browser.html
  if page_text.include? value5
    step "the user clicks on \"report configuration cancel button\" element on \"Save/Reports\" page"
    step "the user clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
    step "the user clicks on \"save report on drop-down\" element on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"saved reports search field\" on \"Save/Reports\" page"
    step "the user remembers the value of \"medication saved report\" field into \"Saved Reports Table\" on \"Save/Reports\" page"
    step "the user delete added report with name \"Medication Report\" on the Saved Reports table"
    step "the user clicks on \"primary nav active protocol\" element on \"Save/Reports\" page"
    step "the user clicks on \"close report icon\" element on \"Btris/Portal\" page"
    step "the user clicks on \"close button\" element on \"Btris/Portal\" page"
    step "the user remembers the value of \"general reports\" field into \"Criteria List\" on \"Btris/Portal\" page"
    sleep 2
    step "the user clicks on \"btris: medication test\" element on \"Btris/Portal\" page"
    #Click on the create new report button.
    step "the user clicks on \"btris: create new report button\" element on \"Btris/Portal\" page"
    step "the user remembers the value of \"btris: medication report page\" field into \"Criteria Page\" on \"Btris/Portal\" page"
    step "the user clicks on \"btris: top select subject button\" element on \"Btris/Portal\" page"
    #Enter and filter subject.
    step "the user enters \"#{value3}\" into \"fine protocol and subject search box\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"protocol verify count\" field into \"Number OF Subjects\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"selected protocol\" field into \"Protocol Number\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"protocol check button\" field into \"Protocol Checkbox\" on \"Btris/Portal\" page"
    step "the user focus and clicks on \"protocol check button\" element on \"Btris/Portal\" page"
    step "the user enters \"#{value4}\" into \"fine filter subject search box\" on \"Btris/Portal\" page"
    sleep 3
    #click on run report button.
    step "the user clicks on \"run report button\" element on \"Btris/Portal\" page"
    #Verify the demographic report table.
    step "the user remembers the value of \"reports results\" field into \"Loaded Report\" on \"Btris/Portal\" page"
    step "the user clicks on \"save report configuration button\" element on \"Save/Reports\" page"
    step "the user remembers the value of \"save report pop-up title\" field into \"Save Report Configuration\" on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
    step "the user must see \"Report name is required\" text in \"report configuration required message\" field on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"save report configuration name filed\" on \"Save/Reports\" page"
    step "the user enters \"#{value2}\" into \"save report configuration description box\" text area box on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
  else
    puts 'No record found that matches ' +value1
  end
end

And(/^the user verify Clinical Doc DV report configuration with name "(.*)" if already exist on the Saved Reports table with "(.*)" and enter new "(.*)" and "(.*)" and verify if "(.*)" which is being added already exist and edit it$/) do |value1, value2, value3, value4, value5|
  page_text = @browser.html
  if page_text.include? value5
    step "the user clicks on \"report configuration cancel button\" element on \"Save/Reports\" page"
    step "the user clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
    step "the user clicks on \"save report on drop-down\" element on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"saved reports search field\" on \"Save/Reports\" page"
    step "the user remembers the value of \"clinical doc dv rl saved report\" field into \"Saved Reports Table\" on \"Save/Reports\" page"
    step "the user clicks on \"delete button for saved report\" element on \"Save/Reports\" page"
    step "the user clicks on \"confirm delete button for saved report\" element on \"Save/Reports\" page"
    step "the user clicks on \"primary nav active protocol\" element on \"Save/Reports\" page"
    step "the user clicks on \"close report icon\" element on \"Btris/Portal\" page"
    step "the user clicks on \"close button\" element on \"Btris/Portal\" page"
    step "the user remembers the value of \"general reports\" field into \"Criteria List\" on \"Btris/Portal\" page"
    sleep 2
    step "the user clicks on \"clinical documents: discrete values\" element on \"Btris/Portal\" page"
    #Click on the create new report button.
    step "the user clicks on \"btris: create new report button\" element on \"Btris/Portal\" page"
    step "the user remembers the value of \"btris: clinical documents: discrete values filter report page\" field into \"Criteria Page\" on \"Btris/Portal\" page"
    step "the user clicks on \"btris: top select subject button\" element on \"Btris/Portal\" page"
    #Enter and filter subject.
    step "the user enters \"#{value3}\" into \"fine protocol and subject search box\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"protocol verify count\" field into \"Number OF Subjects\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"selected protocol\" field into \"Protocol Number\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"protocol check button\" field into \"Protocol Checkbox\" on \"Btris/Portal\" page"
    step "the user focus and clicks on \"protocol check button\" element on \"Btris/Portal\" page"
    step "the user enters \"#{value4}\" into \"fine filter subject search box\" on \"Btris/Portal\" page"
    sleep 3
    #click on run report button.
    step "the user clicks on \"run report button\" element on \"Btris/Portal\" page"
    #Verify the demographic report table.
    step "the user remembers the value of \"reports results\" field into \"Loaded Report\" on \"Btris/Portal\" page"
    step "the user clicks on \"save report configuration button\" element on \"Save/Reports\" page"
    step "the user remembers the value of \"save report pop-up title\" field into \"Save Report Configuration\" on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
    step "the user must see \"Report name is required\" text in \"report configuration required message\" field on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"save report configuration name filed\" on \"Save/Reports\" page"
    step "the user enters \"#{value2}\" into \"save report configuration description box\" text area box on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
  else
    puts 'No record found that matches ' +value1
  end
end



And(/^the user verify admin saved report with name "(.*)" if already exist on the Saved Reports table with "(.*)" and verify if "(.*)" which is being added already exist and edit it with new "(.*)"$/) do |value1, value2, value3, value4|
  page_text = @browser.html
  if page_text.include? value3
    step "the user clicks on \"report configuration cancel button\" element on \"Save/Reports\" page"
    step "the user clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
    step "the user clicks on \"save report on drop-down\" element on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"saved reports search field\" on \"Save/Reports\" page"
    step "the user remembers the value of \"radiology admin saved report\" field into \"Saved Reports Table\" on \"Save/Reports\" page"
    step "the user delete added report with name \"Radiology Administrative\" on the Saved Reports table"
    step "the user clicks on \"primary nav active protocol\" element on \"Save/Reports\" page"
    step "the user clicks on \"close report icon\" element on \"Btris/Portal\" page"
    step "the user clicks on \"close button\" element on \"Btris/Portal\" page"
    sleep 2
    step "the user clicks on \"admin reports nav\" element on \"Btris/Portal\" page"
    #click on the  Radiology Administration Test.
    step "the user remembers the value of \"admin reports\" field into \"Reports\" on \"Btris/Portal\" page"
    step "the user clicks on \"report: radiology administration\" element on \"Btris/Portal\" page"
    #Click on the create new report button.
    step "the user clicks on \"btris: create new report button\" element on \"Btris/Portal\" page"
    step "the user must see \"Radiology Administration Criteria\" text in \"btris: radiology administrative report filter page\" field on \"Btris/Portal\" page"
    step "the user enters \"#{value4}\" into \"radiology exam start date\" on \"Btris/Portal\" page"
    step "the user enters \"Todays Date\" into \"radiology exam end date\" on \"Btris/Portal\" page"
    #click on run report button.
    step "the user clicks on \"run admin report button\" element on \"Btris/Portal\" page"
    #Verify the demographic report table.
    sleep 20
    step "the user verify if the report failed"
    step "the user remembers the value of \"reports results\" field into \"Loaded Report\" on \"Btris/Portal\" page"
    step "the user clicks on \"save report configuration button\" element on \"Save/Reports\" page"
    step "the user remembers the value of \"save report pop-up title\" field into \"Save Report Configuration\" on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
    step "the user must see \"Report name is required\" text in \"report configuration required message\" field on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"save report configuration name filed\" on \"Save/Reports\" page"
    step "the user enters \"#{value2}\" into \"save report configuration description box\" text area box on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
  else
    puts 'No record found that matches ' +value1
  end
end

And(/^the user delete added report with name "(.*)" on the Saved Reports table$/) do |value|
  record_found = false
  table_path = ".//*[@class='table saved-reports-table hover-row-highlight']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 0
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[1]/td[2]"
      puts 'The report to delete is or are ' +delete_icons_row
      new_report = "#{value}"
      if delete_icons_row.downcase.eql? new_report.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}//*[contains(text(), 'Delete')]"
        click_web_element del_obj
        step "the user clicks on \"confirm delete button for saved report\" element on \"Save/Reports\" page"
        sleep 2
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the added Saved Reports Configuration"
  end
end

And(/^the user verify reference list saved report with name "(.*)" if already exist on the Saved Reports table with "(.*)" and verify if "(.*)" which is being added already exist and delete it then add new "(.*)" and enter "(.*)" and "(.*)" and "(.*)" and select "(.*)"$/) do |value1, value2, value3, value4, value5, value6, value7, value8|
  page_text = @browser.html
  if page_text.include? value3
    step "the user clicks on \"report configuration cancel button\" element on \"Save/Reports\" page"
    step "the user clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
    step "the user clicks on \"save report on drop-down\" element on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"saved reports search field\" on \"Save/Reports\" page"
    step "the user remembers the value of \"vital sign rl saved report\" field into \"Saved Reports Table\" on \"Save/Reports\" page"
    step "the user delete added report with name \"Vital Signs\" on the Saved Reports table"
    step "the user clicks on \"primary nav active protocol\" element on \"Save/Reports\" page"
    step "the user clicks on \"close report icon\" element on \"Btris/Portal\" page"
    step "the user clicks on \"close button\" element on \"Btris/Portal\" page"
    sleep 2
    step "the user remembers the value of \"reference list top nav\" field into \"Report Type\" on \"Btris/Portal\" page"
    step "the user clicks on \"reference list top nav\" element on \"Btris/Portal\" page"
    #click on the Laboratory Test.
    step "the user remembers the value of \"reference list reports: vital sign\" field into \"Criteria List\" on \"Btris/Portal\" page"
    #click on the Vital Sign Test.
    step "the user clicks on \"reference list vital sign\" element on \"Btris/Portal\" page"
    #Click on the create new report button.
    step "the user clicks on \"btris: create new report button\" element on \"Btris/Portal\" page"
    step "the user must see \"Vital Signs Criteria\" text in \"reference list vital signs report filter page\" field on \"Btris/Portal\" page"
    sleep 2
    step "the user selects \"#{value4}\" from \"reference list drop down\" drop down on \"Btris/Portal\" page"
    step "the user enters \"#{value5}\" into \"reference list day range text box\" on \"Btris/Portal\" page"
    step "the user enters \"#{value6}\" into \"number of days after text box\" on \"Btris/Portal\" page"
    step "the user enters \"#{value7}\" into \"number of values text box\" on \"Btris/Portal\" page"
    step "the user selects \"#{value8}\" from \"labs drop down\" drop down on \"Btris/Portal\" page"
    step "the user clicks on \"btris: bottom select button\" element on \"Btris/Portal\" page"
    #Verify the demographic report table.
    step "the user remembers the value of \"reports results\" field into \"Loaded Report\" on \"Btris/Portal\" page"
    step "the user clicks on \"save report configuration button\" element on \"Save/Reports\" page"
    step "the user remembers the value of \"save report pop-up title\" field into \"Save Report Configuration\" on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
    step "the user must see \"Report name is required\" text in \"report configuration required message\" field on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"save report configuration name filed\" on \"Save/Reports\" page"
    step "the user enters \"#{value2}\" into \"save report configuration description box\" text area box on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
  else
    puts 'No record found that matches ' +value1
  end
end

And(/^the user verify lab reference list saved report with name "(.*)" if already exist on the Saved Reports table with "(.*)" and verify if "(.*)" which is being added already exist and delete it then add new "(.*)" and enter "(.*)" and "(.*)" and "(.*)" and select "(.*)"$/) do |value1, value2, value3, value4, value5, value6, value7, value8|
  page_text = @browser.html
  if page_text.include? value3
    step "the user clicks on \"report configuration cancel button\" element on \"Save/Reports\" page"
    step "the user clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
    step "the user clicks on \"save report on drop-down\" element on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"saved reports search field\" on \"Save/Reports\" page"
    step "the user remembers the value of \"lab rl saved report\" field into \"Saved Reports Table\" on \"Save/Reports\" page"
    step "the user delete added report with name \"Laboratory Reference List\" on the Saved Reports table"
    step "the user clicks on \"primary nav active protocol\" element on \"Save/Reports\" page"
    step "the user clicks on \"close report icon\" element on \"Btris/Portal\" page"
    step "the user clicks on \"close button\" element on \"Btris/Portal\" page"
    sleep 2
    step "the user remembers the value of \"reference list top nav\" field into \"Report Type\" on \"Btris/Portal\" page"
    step "the user clicks on \"reference list top nav\" element on \"Btris/Portal\" page"
    #click on the Laboratory Test.
    step "the user remembers the value of \"reference list reports: vital sign\" field into \"Criteria List\" on \"Btris/Portal\" page"
    #click on the Vital Sign Test.
    step "the user clicks on \"reference list laboratory\" element on \"Btris/Portal\" page"
    #Click on the create new report button.
    step "the user clicks on \"btris: create new report button\" element on \"Btris/Portal\" page"
    step "the user must see \"Laboratory Criteria\" text in \"reference list laboratory report filter page\" field on \"Btris/Portal\" page"
    sleep 2
    step "the user selects \"#{value4}\" from \"reference list drop down\" drop down on \"Btris/Portal\" page"
    step "the user enters \"#{value5}\" into \"reference list day range text box\" on \"Btris/Portal\" page"
    step "the user enters \"#{value6}\" into \"number of days after text box\" on \"Btris/Portal\" page"
    step "the user enters \"#{value7}\" into \"number of values text box\" on \"Btris/Portal\" page"
    step "the user selects \"#{value8}\" from \"labs drop down\" drop down on \"Btris/Portal\" page"
    step "the user clicks on \"btris: bottom select button\" element on \"Btris/Portal\" page"
    #Verify the demographic report table.
    step "the user remembers the value of \"reports results\" field into \"Loaded Report\" on \"Btris/Portal\" page"
    step "the user clicks on \"save report configuration button\" element on \"Save/Reports\" page"
    step "the user remembers the value of \"save report pop-up title\" field into \"Save Report Configuration\" on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
    step "the user must see \"Report name is required\" text in \"report configuration required message\" field on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"save report configuration name filed\" on \"Save/Reports\" page"
    step "the user enters \"#{value2}\" into \"save report configuration description box\" text area box on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
  else
    puts 'No record found that matches ' +value1
  end
end


And(/^the user Pathology Signs reference list saved report with name "(.*)" if already exist on the Saved Reports table with "(.*)" and verify if "(.*)" which is being added already exist and delete it then add new "(.*)" and enter "(.*)" and "(.*)" and "(.*)" and select "(.*)"$/) do |value1, value2, value3, value4, value5, value6, value7, value8|
  page_text = @browser.html
  if page_text.include? value3
    step "the user clicks on \"report configuration cancel button\" element on \"Save/Reports\" page"
    step "the user clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
    step "the user clicks on \"save report on drop-down\" element on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"saved reports search field\" on \"Save/Reports\" page"
    step "the user remembers the value of \"pathology rl saved report\" field into \"Saved Reports Table\" on \"Save/Reports\" page"
    step "the user delete added report with name \"Pathology Reference List\" on the Saved Reports table"
    step "the user clicks on \"primary nav active protocol\" element on \"Save/Reports\" page"
    step "the user clicks on \"close report icon\" element on \"Btris/Portal\" page"
    step "the user clicks on \"close button\" element on \"Btris/Portal\" page"
    sleep 2
    step "the user remembers the value of \"reference list top nav\" field into \"Report Type\" on \"Btris/Portal\" page"
    step "the user clicks on \"reference list top nav\" element on \"Btris/Portal\" page"
    #click on the Laboratory Test.
    step "the user remembers the value of \"reference list reports: pathology\" field into \"Criteria List\" on \"Btris/Portal\" page"
    #click on the Vital Sign Test.
    step "the user clicks on \"reference list pathology\" element on \"Btris/Portal\" page"
    #Click on the create new report button.
    step "the user clicks on \"btris: create new report button\" element on \"Btris/Portal\" page"
    step "the user must see \"Pathology Criteria\" text in \"reference list pathology report filter page\" field on \"Btris/Portal\" page"
    sleep 2
    step "the user selects \"#{value4}\" from \"reference list drop down\" drop down on \"Btris/Portal\" page"
    step "the user enters \"#{value5}\" into \"reference list day range text box\" on \"Btris/Portal\" page"
    step "the user enters \"#{value6}\" into \"number of days after text box\" on \"Btris/Portal\" page"
    step "the user enters \"#{value7}\" into \"number of values text box\" on \"Btris/Portal\" page"
    step "the user selects \"#{value8}\" from \"labs drop down\" drop down on \"Btris/Portal\" page"
    step "the user clicks on \"btris: bottom select button\" element on \"Btris/Portal\" page"
    #Verify the demographic report table.
    step "the user remembers the value of \"reports results\" field into \"Loaded Report\" on \"Btris/Portal\" page"
    step "the user clicks on \"save report configuration button\" element on \"Save/Reports\" page"
    step "the user remembers the value of \"save report pop-up title\" field into \"Save Report Configuration\" on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
    step "the user must see \"Report name is required\" text in \"report configuration required message\" field on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"save report configuration name filed\" on \"Save/Reports\" page"
    step "the user enters \"#{value2}\" into \"save report configuration description box\" text area box on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
  else
    puts 'No record found that matches ' +value1
  end
end


And(/^the user Radiology reference list saved report with name "(.*)" if already exist on the Saved Reports table with "(.*)" and verify if "(.*)" which is being added already exist and delete it then add new "(.*)" and enter "(.*)" and "(.*)" and "(.*)" and select "(.*)"$/) do |value1, value2, value3, value4, value5, value6, value7, value8|
  page_text = @browser.html
  if page_text.include? value3
    step "the user clicks on \"report configuration cancel button\" element on \"Save/Reports\" page"
    step "the user clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
    step "the user clicks on \"save report on drop-down\" element on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"saved reports search field\" on \"Save/Reports\" page"
    step "the user remembers the value of \"radiology rl saved report\" field into \"Saved Reports Table\" on \"Save/Reports\" page"
    step "the user delete added report with name \"Pathology Reference List\" on the Saved Reports table"
    step "the user clicks on \"primary nav active protocol\" element on \"Save/Reports\" page"
    step "the user clicks on \"close report icon\" element on \"Btris/Portal\" page"
    step "the user clicks on \"close button\" element on \"Btris/Portal\" page"
    sleep 2
    step "the user remembers the value of \"reference list top nav\" field into \"Report Type\" on \"Btris/Portal\" page"
    step "the user clicks on \"reference list top nav\" element on \"Btris/Portal\" page"
    #click on the Laboratory Test.
    step "the user remembers the value of \"reference list reports: pathology\" field into \"Criteria List\" on \"Btris/Portal\" page"
    #click on the Vital Sign Test.
    step "the user clicks on \"reference list radiology\" element on \"Btris/Portal\" page"
    #Click on the create new report button.
    step "the user clicks on \"btris: create new report button\" element on \"Btris/Portal\" page"
    step "the user must see \"Radiology Criteria\" text in \"reference list radiology report filter page\" field on \"Btris/Portal\" page"
    sleep 2
    step "the user selects \"#{value4}\" from \"reference list drop down\" drop down on \"Btris/Portal\" page"
    step "the user enters \"#{value5}\" into \"reference list day range text box\" on \"Btris/Portal\" page"
    step "the user enters \"#{value6}\" into \"number of days after text box\" on \"Btris/Portal\" page"
    step "the user enters \"#{value7}\" into \"number of values text box\" on \"Btris/Portal\" page"
    step "the user selects \"#{value8}\" from \"labs drop down\" drop down on \"Btris/Portal\" page"
    step "the user clicks on \"btris: bottom select button\" element on \"Btris/Portal\" page"
    #Verify the demographic report table.
    step "the user remembers the value of \"reports results\" field into \"Loaded Report\" on \"Btris/Portal\" page"
    step "the user clicks on \"save report configuration button\" element on \"Save/Reports\" page"
    step "the user remembers the value of \"save report pop-up title\" field into \"Save Report Configuration\" on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
    step "the user must see \"Report name is required\" text in \"report configuration required message\" field on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"save report configuration name filed\" on \"Save/Reports\" page"
    step "the user enters \"#{value2}\" into \"save report configuration description box\" text area box on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
  else
    puts 'No record found that matches ' +value1
  end
end

And(/^the user verify if the pdf linked has error message "(.*)" which means the link is broken$/) do | message|
  sleep 5
 if step "the switch to new tab page"
  page_text = @browser.html
  else
  if page_text.include? message
    fail("Unable to view or open the pdf document error message,  #{message} , is display after clicking the pdf link")
    step "the return to main page"
  else
    puts "The user didn't see error message, #{message} , text on the page which means the pdf link is working as expected"
  end
end
end


And(/^the user verify if the tif linked has error message "(.*)" which means the link is broken$/) do | message|
sleep 2
  step "the switch to new tab page"
  page_text = @browser.html

  if page_text.include? message
    fail("Unable to view or download the .tif document error message, #{message}, is display after clicking on document with .tif extension ")
  else
    puts "The user didn't see error message, #{message}, text on the page which means the document document with .tif extension link is working as expected"
    step "the return to main page"
  end
end

And(/^the user verify if the BTRIS logo linked has error message "(.*)" which means the link is broken$/) do | message|
  sleep 2
  step "the switch to new tab page"
  page_text = @browser.html
  if page_text.include? message
    fail("Unable to view or navigate to the BTRIS LOGO, error message   #{message} , is display when navigating to the logo")
    step "the return to main page"
  else
    puts "The user didn't see error message, #{message} , text on the page which means the BTRIS logo link is working as expected"
  end
end

And(/^the user download qa data with "(.*)" on the qa protocol table$/) do |value|
  record_found = false
  table_path = ".//*[@class='table qa-protocols-table hover-row-highlight']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      puts 'the protocol is ' +value
      download_button_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
      puts 'the row data is ' +download_button_row
      new_document = "#{value}"
      if download_button_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}//tbody/tr[#{rows}]/td/button"
        click_web_element del_obj
        sleep 2
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the qa protocol"
  end
end

And(/^the user verify the principal investigator "(.*)" investigated "(.*)" for Quality Assurance$/) do |value1, value2|
  record_found = false
  table_path = ".//*[@class='table qa-protocols-table hover-row-highlight']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      download_button_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      new_document = "#{value1}"
      if download_button_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
       if del_obj.eql? value1
         puts "The Principal Investigator Name #{value1} checked-out as Principal Investigator for #{value2}"
       else
         fail("The Principal Investigator Name #{value1} DID NOT checked-out as Principal Investigator for #{value2}")
       end
        sleep 2
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the qa protocol"
  end
end

Then(/^the user clicks on "(.*)" download on "(.*)" page$/) do |field_name, page_name|
  # get the XPATH or CSS from page object file , Raises Error if not found
  begin
    selector, element_path = get_element_target(field_name, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{field_name} in #{page_name} page objects File")
  end
  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{field_name} in #{page_name} page objects File")
  end
  selector = (selector.downcase.include? 'xpath') ? :xpath : :css

  # Create the Element object
  element_obj = @browser.element(selector, element_path)

  # Wait for element to be present
  wait_for_element(element_obj)

  # Focus on element to make it visible
  focus_on_element(element_obj)

  element_obj.click

  end


And(/^the user verify that the total record is "(.*)" for the lab report$/) do |value|
  total_record= ".//*[@data-test='record-count']/h3"
  total_record_count = get_element_text 'xpath', "#{total_record}"
  sleep 2
  if total_record_count.eql? value
    puts "The record count #{total_record_count}, is equal to the expected records to be loaded"

  else
    fail("The record count #{total_record_count}, total record count is not equal to the expected count of #{value}, please check to make sure the expected record count is accurate")
    step "the return to main page"
  end
end


And(/^the user verify if upload list has an "(.*)" or "(.*)" upon submission/) do |error1, error2|
  sleep 11
  page_html = @browser.html

  if page_html.include? error1
    upload_error_message = ".//*[@class='form-errors__error-list']"
    upload_error = get_element_text 'xpath', "#{upload_error_message}"
    puts "The upload list PASSED with the EXPECTED ERROR, #{upload_error}"

  else
    if page_html.include? error2
      upload_error_message = ".//*[@class='form-errors__error-list']"
      upload_error = get_element_text 'xpath', "#{upload_error_message}"
      puts (fail("The upload list FAILED with the following ERRORS, #{upload_error}"))
    else
      puts "Upload List was SUCCESSFUL"
    end
  end
end



Then(/^the user verify if upload list has an "(.*)" or "(.*)" after submission/) do |error1, error2|
  page_html = @browser.html

  if page_html.include? error1
    upload_error_message = ".//*[@class='form-errors__error-list']"
    upload_error = get_element_text 'xpath', "#{upload_error_message}"
    puts (fail("The upload list FAILED with the following ERROR, #{upload_error}"))
  else
    if page_html.include? error2
      upload_error_message = ".//*[@class='form-errors__error-list']"
      upload_error = get_element_text 'xpath', "#{upload_error_message}"
      puts (fail("The upload list FAILED with the following ERRORS, #{upload_error}"))
    else
      puts "Upload List was SUCCESSFUL"
    end
  end
end


And(/^the user selects "(.*)" from "(.*)" search term list drop down and "(.*)" and "(.*)" then reenter "(.*)" on "(.*)" page$/) do |value, field_name, value2, value3, value4, page_name|

  Reference_List = ".//*[@id='select-reference-list']"
  Reference_List_Values = get_element_text 'xpath', "#{Reference_List}"
  # get the XPATH or CSS from page object file , Raises Error if not found
  if Reference_List_Values.include? value
    begin
      selector, element_path = get_element_target(field_name, page_name).split('^^')
    rescue
      fail("Element Xpath is not found for #{field_name} in #{page_name} page objects File")
    end
    if selector.nil? || element_path.nil?
      fail("Element Xpath is not found for #{field_name} in #{page_name} page objects File")
    end
    selector = (selector.downcase.include? 'xpath') ? :xpath : :css

    # Create Dropdown list object
    drop_down_obj = @browser.select_list(selector, element_path)

    # Wait for element to be exist, visible,present and enabled
    wait_for_element(drop_down_obj)

    # Focus on element to make it visible
    focus_on_element(drop_down_obj)

    # Check Select value only not already selected
    if drop_down_obj.text.squeeze(' ').strip.downcase != value.squeeze(' ').strip.downcase
      drop_down_element_path = element_path + "/option[normalize-space() = '#{value}']"
      # Create dropdown div object and wait to displayed
      drop_down_obj = @browser.element(selector, drop_down_element_path)
      # Wait for element to be exist, visible,present and enabled
      wait_for_element(drop_down_obj)

      # Focus on element to make it visible
      focus_on_element(drop_down_obj)

      drop_down_obj.wait_until_present.click

    end
  else
    puts "The Reference Lists, #{value} , is NOT available on the Reference List drop-dwon so, a new template list will be added"
    step "the user clicks on \"custom user drop down\" element on \"Btris/Portal\" page"
    #Clcik on custom list.
    step "the user clicks on \"custom list\" element on \"Btris/Portal\" page"
    step "the user clicks on \"reference list\" element on \"Btris/Portal\" page"
    step "the user enters \"#{value}\" into \"reference list: search box\" on \"Btris/Portal\" page"
    step "the user verify if existing \"#{value}\" data exist and remove it"
    step "the user clicks on \"custom reference lists upload button\" element on \"Btris/Portal\" page"
    step "the user remembers the value of \"upload reference list page title\" field into \"Reference List Page Title\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"overwrite existing reference list\" field into \"Page Text\" on \"Btris/Portal\" page"

    step "the user enters \"BTRIS_TEST2 - TEST2 null\" into \"reference list upload: user field\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"reference list upload: user\" field into \"User Name\" on \"Btris/Portal\" page"
    step "the user clicks on \"reference list upload: user\" element on \"Btris/Portal\" page"

    step "the user enters \"#{value4}\" into \"reference list: list name field\" on \"Btris/Portal\" page"
    step "the user clicks on \"reference list: overwrite checkbox\" element on \"Btris/Portal\" page"
    step "the user enters \"Automation Description Test Text\" into \"reference list: description\" text area box on \"Btris/Portal\" page"
    step "the user enters \"#{value2}\" into \"reference list: date type\" on \"Btris/Portal\" page"
    step "user attached \"#{value3}\" file into \"reference list: brows upload\" on \"Btris/Portal\" page"
    step "the user clicks on \"reference list: upload button\" element on \"Btris/Portal\" page"
    step "the user must see \"Upload succeeded\" text in \"upload status\" field on \"Btris/Portal\" page"
    sleep 3
    step "the user must see \"Reference Lists\" text in \"reference lists table\" field on \"Btris/Portal\" page"
    step "the user clicks on \"nav arrow to active protocol\" element on \"Btris/Portal\" page"
    sleep 2
    step "user refresh the browser"
    step "the user selects \"#{value}\" from \"reference list drop down\" drop down on \"Btris/Portal\" page"
  end
end


And(/^the user verify and select selects "(.*)" from "(.*)" drop down and provide "(.*)" and "(.*)" and "(.*)" and "(.*)" on "(.*)" page$/) do |value, field_name, value3, value4, value5, value6, page_name|

  Search_List = ".//*[@id='selectLabList-reference-list-select-search-terms']"
  Search_List_Values = get_element_text 'xpath', "#{Search_List}"
  # get the XPATH or CSS from page object file , Raises Error if not found
  if Search_List_Values.include? value
    begin
      selector, element_path = get_element_target(field_name, page_name).split('^^')
    rescue
      fail("Element Xpath is not found for #{field_name} in #{page_name} page objects File")
    end
    if selector.nil? || element_path.nil?
      fail("Element Xpath is not found for #{field_name} in #{page_name} page objects File")
    end
    selector = (selector.downcase.include? 'xpath') ? :xpath : :css

    # Create Dropdown list object
    drop_down_obj = @browser.select_list(selector, element_path)

    # Wait for element to be exist, visible,present and enabled
    wait_for_element(drop_down_obj)

    # Focus on element to make it visible
    focus_on_element(drop_down_obj)

    # Check Select value only not already selected
    if drop_down_obj.text.squeeze(' ').strip.downcase != value.squeeze(' ').strip.downcase
      drop_down_element_path = element_path + "/option[normalize-space() = '#{value}']"
      # Create dropdown div object and wait to displayed
      drop_down_obj = @browser.element(selector, drop_down_element_path)

      # Wait for element to be exist, visible,present and enabled
      wait_for_element(drop_down_obj)

      # Focus on element to make it visible
      focus_on_element(drop_down_obj)

      drop_down_obj.wait_until_present.click
      sleep 4
      step "the user clicks the \"run report top button\" button on \"Btris/Portal\" page"
    end
  else
    puts "The Search Term Lists, #{value} , is NOT available on the Reference List drop-dwon so, a new template list will be added "
    step "the user clicks on \"custom user drop down\" element on \"Btris/Portal\" page"
    #Clcik on custom list.
    step "the user clicks on \"custom list\" element on \"Btris/Portal\" page"
    step "the user clicks on \"left nav: search term list\" element on \"Btris/Portal\" page"
    step "the user enters \"#{value}\" into \"custom list search term box\" on \"Btris/Portal\" page"
    step "the user verify if existing \"#{value}\" exist and remove it"
    step "the user clicks on \"custom search term list upload button\" element on \"Btris/Portal\" page"
    step "the user remembers the value of \"upload search term list page title\" field into \"Page Title\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"overwrite existing reference list\" field into \"Page Text\" on \"Btris/Portal\" page"
    step "the user enters \"#{value4}\" into \"custom search term list: user field\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"custom search term list: user\" field into \"User Name\" on \"Btris/Portal\" page"
    step "the user clicks on \"custom search term list: user\" element on \"Btris/Portal\" page"
    step "the user clicks on \"custom search term overwrite checkbox\" element on \"Btris/Portal\" page"
    step "the user enters \"#{value3}\" into \"custom search term list: list name field\" on \"Btris/Portal\" page"
    step "the user enters \"Automation Description Test Text\" into \"custom search term list: description\" text area box on \"Btris/Portal\" page"
    step "the user selects \"#{value5}\" from \"custom search term list: domain drop down\" drop down on \"Btris/Portal\" page"
    step "user attached \"#{value6}\" file into \"custom search term list: brows upload\" on \"Btris/Portal\" page"
    step "the user clicks on \"custom search term list: upload button\" element on \"Btris/Portal\" page"
    step "the user must see \"Upload succeeded\" text in \"upload status\" field on \"Btris/Portal\" page"
    sleep 3
    step "the user must see \"Search Term Lists\" text in \"search term list table\" field on \"Btris/Portal\" page"
    step "the user clicks on \"nav arrow to active protocol\" element on \"Btris/Portal\" page"
    sleep 2
    step "the user selects \"#{value}\" from \"labs drop down\" drop down on \"Btris/Portal\" page"
    sleep 5
    step "the user clicks the \"run report top button\" button on \"Btris/Portal\" page"
  end
end


And(/^the user enters "(.*)" and "(.*)" and select "(.*)" then attached "(.*)" on the custom list page$/) do |value1, value2, value3, value4|

  step "the user clicks the \"custom search term list upload button\" button on \"Btris/Portal\" page"
  step "the user remembers the value of \"upload search term list page title\" field into \"Page Title\" on \"Btris/Portal\" page"
  step "the user remembers the value of \"overwrite existing list\" field into \"Page Text\" on \"Btris/Portal\" page"
  step "the user enters \"#{value1}\" into \"custom search term list: user field\" on \"Btris/Portal\" page"
  step "the user remembers the value of \"custom search term list: user\" field into \"User Name\" on \"Btris/Portal\" page"
  step "the user clicks on \"custom search term list: user\" element on \"Btris/Portal\" page"
  step "the user clicks on \"custom search term overwrite checkbox\" element on \"Btris/Portal\" page"
  step "the user enters \"#{value2}\" into \"custom search term list: list name field\" on \"Btris/Portal\" page"
  step "the user enters \"Automation Description Test Text\" into \"custom search term list: description\" text area box on \"Btris/Portal\" page"
  step "the user selects \"#{value3}\" from \"custom search term list: domain drop down\" drop down on \"Btris/Portal\" page"
  step "user attached \"#{value4}\" file into \"custom search term list: brows upload\" on \"Btris/Portal\" page"
  step "the user clicks on \"custom search term list: upload button\" element on \"Btris/Portal\" page"
  step "the user must see \"Upload succeeded\" text in \"upload status\" field on \"Btris/Portal\" page"
  step "the user waits for 3 seconds"
  step "the user must see \"Search Term Lists\" text in \"search term list table\" field on \"Btris/Portal\" page"
  end


And(/^the user enters "(.*)" and "(.*)" and "(.*)" then attached "(.*)" on the custom list page for reference list$/) do |value0, value1, value2, value3|
  step "the user clicks the \"custom reference lists upload button\" button on \"Btris/Portal\" page"
  step "the user remembers the value of \"upload reference list page title\" field into \"Page Title\" on \"Btris/Portal\" page"
  step "the user remembers the value of \"overwrite existing reference list\" field into \"Page Text\" on \"Btris/Portal\" page"
  step "the user enters \"#{value0}\" into \"custom reference list: user field\" on \"Btris/Portal\" page"
  step "the user clicks on \"custom reference list: user\" element on \"Btris/Portal\" page"
  step "the user enters \"#{value1}\" into \"reference list: list name field\" on \"Btris/Portal\" page"
  step "the user clicks on \"reference list: overwrite checkbox\" element on \"Btris/Portal\" page"
  step "the user enters \"Automation Description Test Text DN\" into \"reference list: description\" text area box on \"Btris/Portal\" page"
  step "the user enters \"#{value2}\" into \"reference list: date type\" on \"Btris/Portal\" page"
  step "user attached \"#{value3}\" file into \"reference list: brows upload\" on \"Btris/Portal\" page"
  step "the user clicks on \"custom search term list: upload button\" element on \"Btris/Portal\" page"
  step "the user must see \"Upload succeeded\" text in \"upload status\" field on \"Btris/Portal\" page"
  step "the user waits for 3 seconds"
  step "the user must see \"Reference Lists\" text in \"reference lists table\" field on \"Btris/Portal\" page"
end

Then(/^the user verify if the report failed$/) do
  sleep 6
  page_html = @browser.html
  if page_html.include? "Report failed"
    Error4 = ".//*[@class='center preview-error-message']"
    Error_Message4 = get_element_text 'xpath', "#{Error4}"
    puts (fail("The Report Failed with ERROR, #{Error_Message4}"))
  else
    puts "Report Check Continue"

  end
  step "the user remembers the value of \"results table column header\" field into \"Results Table Column\" on \"Btris/Portal\" page"
  page_html = @browser.html
  Report_Error = "There was an unexpected failure while generating the report download."
  Report_Error1 = "No records found"
  Report_Error2 = "Report failed"

  if page_html.include? Report_Error
    Error = ".//*[@class='row grid-previewer__error-text']"
    Error_Message = get_element_text 'xpath', "#{Error}"
    puts (fail("The Report was loaded with ERROR, #{Error_Message}"))
  else
    if page_html.include? Report_Error1
      puts (fail("The Report was loaded with ERROR Message, #{Report_Error1}"))
    else
      if page_html.include? Report_Error2
        puts (fail("The Report was loaded with ERROR, #{Report_Error2}"))
        Error1 = ".//*[@class='center preview-error-message']"
        Error_Message1 = get_element_text 'xpath', "#{Error1}"
        puts (fail("The Report Failed with ERROR, #{Error_Message1}"))
      else
        puts "Report was Successfully Previewed"
      end
    end
  end
end



Then(/^the user verify if the are any more errors with the report$/) do
  page_html = @browser.html
  Report_Error = "There was an unexpected failure while generating the report download."

  if page_html.include? Report_Error
    Error = ".//*[@class='row grid-previewer__error-text']"
    Error_Message = get_element_text 'xpath', "#{Error}"
    puts (fail("The Report was loaded with ERROR, #{Error_Message}"))
  else
    puts "Report was Successfully Previewed"
  end
end


Then(/^the user verify if the template was uploaded successfully with "(.*)"$/) do |value|
  Upload_Status = "Upload failed"


  if step "the user must see \"#{value}\" text in \"all upload status\" field on \"Btris/Portal\" page"
    puts "Templates with Cluster IDs was Successfully uploaded"
  else
    upload_status_message = ".//*[@class='noty_body']"
    upload_status_value = get_element_text 'xpath', "#{upload_status_message}"
    if upload_status_value.include? Upload_Status
      puts (fail("The Report was loaded with ERROR, #{upload_status_value}"))
    else
      puts "Templates with Cluster IDs was Successfully uploaded"
    end
  end
end

Then(/^the user verify if the report is unable to run with message$/) do

  Report_Status = ".//*[@class='noty_body']"
  Report_Status_value = get_element_text 'xpath', "#{Report_Status}"
  Report_Pass_Status = "Report started"

  if Report_Status_value.include? "Unable to run report"
    puts (fail("The Report Failed with ERROR, #{Report_Status_value}"))
  else
    if Report_Status_value.include? "Report started"
      puts ("The Report ran with status, #{Report_Pass_Status}")
    else
      puts "Unknown Error"

    end
  end
end


And(/^the user verify total count of Sodium clusters$/) do
  Sodium = ".//*[@class='jstree-children']//*[contains(@class, 'jstree-node  jstree-leaf')]"
  Sodium_Count = get_elements_size 'xpath', "#{Sodium}"
  if Sodium_Count == 11
    puts ("The clusters in the cluster group counts matches, the count is, #{Sodium_Count}")
  else
    puts (fail("The clusters in the cluster group counts DID NOT match, the count is , #{Sodium_Count}"))

  end
end

Then(/^the user verify if the search results for KETO matches the actual results$/) do
  Search_Results = ".//*[(@class='jstree jstree-1 jstree-proton jstree-proton-responsive jstree-checkbox-selection')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "7-Ketocholesterol (Blood)\nKetones (Blood)\nKetones (Urinalysis)\n17-Ketogenic Steroids (Urine)\n17-Ketosteroids (Urine)\n17-Ketosteroids or Ketogenic Steroids (Urine)\n2-Ketoglutaric Acid (Urine)\nColl. Duration [Order: 17-Ketosteroids] (Urine)\nKetones (Urine)\nVolume [Order: Ketosteriods] (Urine)\nSCSU Tests (Urine)\nSCSU POCT Tests (Urine)"

  if Search_Results_value.eql? Actual_Results
    puts ("The Cluster Items Searched Term: 'KETO', results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
  else
    puts (fail("The Cluster Items Searched Term: 'KETO', results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end


Then(/^the user verify if the search results for SED RATE matches the "(.*)"$/) do |value|
  Search_Results = ".//*[(@class='jstree-container-ul jstree-children jstree-no-icons jstree-no-checkboxes')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = value

  if Search_Results_value.eql? Actual_Results
    puts ("The Cluster Item Searched Term: 'SED RATE', results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
  else
    puts (fail("The Cluster Item Searched Term: 'SED RATE', results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end


Then(/^the user verify if the search results for "(.*)" matches the actual results$/) do |value|
  Search_Results = ".//*[(@class='jstree-container-ul jstree-children jstree-no-icons jstree-no-checkboxes')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = value

  if Search_Results_value.eql? Actual_Results
    puts ("The Cluster Group Searched Term: #{value}, results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
  else
    puts (fail("The Cluster Group Searched Term: #{value}, results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end


Then(/^the user verify if the search results for "(.*)" matches the "(.*)"$/) do |value1, value2|

  Search_Results = ".//*[(@class='jstree-container-ul jstree-children jstree-no-icons jstree-no-checkboxes')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = value2
  if Search_Results_value.eql? Actual_Results
    puts ("The Cluster Group Searched Term: #{value1}, results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
  else
    puts (fail("The Cluster Group Searched Term: #{value1}, results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end


Then(/^the user verify if the cluster group for "(.*)" matches the Actual Group Children$/) do |value|
  Search_Results = ".//*[(@class='jstree-children')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "SI #1 Cell % (Blood)\nSI #2 Cell % (Blood)\nStim. Index #1 (Blood)\nStim. Index #2 (Blood)"

  if Search_Results_value.eql? Actual_Results
    puts ("The Cluster Panel Group Searched Term: #{value}, results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
  else
    puts (fail("The Cluster Panel Group Searched Term: #{value}, results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end

Then(/^the user verify if the cluster panel group "(.*)" matches the Actual Group Children$/) do |value|
  Search_Results = ".//*[(@class='jstree-children')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "Cytomegalovirus (CMV) Ab IgG (Blood)\nCytomegalovirus (CMV) Ab IgM (Blood)"

  if Search_Results_value.eql? Actual_Results
    puts ("The Cluster Panel Group Searched Term: #{value}, results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
  else
    puts (fail("The Cluster Panel Group Searched Term: #{value}, results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end

Then(/^the user verify if the presentation cluster panel group "(.*)" matches the Actual Group Children$/) do |value|
  Search_Results = ".//*[(@class='jstree-children')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "HDL Cholesterol [Lipoprotein Profile] (Blood)\nLipoprotein: HDL Particle Number (Blood)\nLipoprotein: HDL Size (Blood)\nLipoprotein: Large HDL Particle Number (Blood)\nLipoprotein: Large Medium HDL Particle Number (Blood)\nLipoprotein: Medium HDL Particle Number (Blood)\nLipoprotein: Small HDL Particle Number (Blood)"

  if Search_Results_value.eql? Actual_Results
    puts ("The Presentation Cluster Group Searched Term: #{value}, results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
  else
    puts (fail("The Presentation Cluster Group Searched Term: #{value}, results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end


Then(/^the user verify if the "(.*)" sorting matches the Actual top level sorting$/) do |value|
  Search_Results = ".//*[(@class='jstree-container-ul jstree-children jstree-no-icons jstree-no-checkboxes')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "Iron (Blood)\nIron (Blood)\nIron % Saturation (Blood)\nTotal Iron Bind Cap (Blood)\nUnsat Iron Bind Cap (Blood)\nAntibody Detection - Allergens - Food or Environmental (Blood)\nIron (Urine)\nUrine volume\nIron (Urine - 24 hr)\nCarbapenemase PCR Cepheid (Environmental)\nEnvironmental Monitoring\nSphingomonas Surveillance Culture (Environmental)\nIron (Liver)"
  puts 'Saved  text are:' +Search_Results_value
  puts Search_Results_value
  if Search_Results_value.eql? Actual_Results
    puts ("The Top level sorting Searched Term: #{value}, results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
  else
    puts (fail("The Top level sorting Searched Term: #{value}, results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end


Then(/^the user verify if the specimen type level "(.*)" matches the Actual Group Children$/) do |value|
  Search_Results = ".//*[(@class='jstree-children')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "Iron (Blood)\nTransferrin (Blood)\nIron % Saturation (Blood)\nFerritin (Blood)\nTotal Iron Bind Cap (Blood)\nUnsat Iron Bind Cap (Blood)"

  if Search_Results_value.eql? Actual_Results
    puts ("The Specimen Cluster Group Searched Term: #{value}, results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
  else
    puts (fail("The Specimen Cluster Group Searched Term: #{value}, results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end


Then(/^the user verify that the super group "(.*)" results matches the Actual result$/) do |value|
  Search_Results = ".//*[(@class='jstree-container-ul jstree-children jstree-no-icons jstree-no-checkboxes')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "Lymphocyte Phenotyping - Anti-TAC (Blood)\nLymphocyte Phenotyping - Anti-TAC 2 (Blood)\nLymphocyte Phenotyping - TAC (Blood)\nLymphocyte Phenotyping - TAC Part2 (Blood)\nLymphocyte Phenotyping - TRL (Blood)\nLymphocyte Phenotyping\nLymphocyte Phenotyping - Cutaneous T Cell (Blood)\nLymphocyte Phenotyping - LAD-1 (Blood)\nLymphocyte Phenotyping - LAD (Blood)\nLymphocyte Phenotyping - PID (Blood)\nLymphocyte Phenotyping - Hyper MAC (Blood)\nLymphocyte Phenotyping - HyperMAC (Blood)\nLymphocyte Phenotyping - MAC (Blood)\nLymphocyte Phenotyping - IL-15 (Blood)\nFlow Cytometry - CRIMSON (Blood)\nLymphocyte Phenotyping - LGL (Blood)\nLymphocyte Phenotyping - Large Granular Lymphoma (Blood)\nRevised Algorithm for Lymphocyte Phenotyping - CRIMSON (Blood)\nLymphocyte Phenotyping - Large Granular Lymphoma 1 (Blood)\nLymphocyte Phenotyping - Large Granular Lymphoma 3 (Blood)"

  if Search_Results_value.eql? Actual_Results
    puts ("The super group Searched Term: #{value}, results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
  else
    puts (fail("The super group Searched Term: #{value}, results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end

Then(/^the user verify that the super group "(.*)" second results matches the Actual result$/) do |value|
  Search_Results = ".//*[(@class='jstree-container-ul jstree-children jstree-no-icons jstree-no-checkboxes')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "Lymphocyte Phenotyping - LGL1 (Blood)\nLymphocyte Phenotyping - Myo/Rituximab (Blood)\nLymphocyte Phenotyping - SCID (Blood)\nLymphocyte Phenotyping - Abnormal(manual) (Blood)\nLymphocyte Phenotyping - ALP Syndrome (Blood)\nLymphocyte Phenotyping - ALPS (Blood)\nLymphocyte Phenotyping - Atopy (Blood)\nLymphocyte Phenotyping - Autoimmune 2 (Blood)\nLymphocyte Phenotyping - Autoimmunity 2 (Blood)\nLymphocyte Phenotyping - B Cell Defect (Blood)\nLymphocyte Phenotyping - B Cell Defect 2 (Blood)\nLymphocyte Phenotyping - B Cell Defect Part2 (Blood)\nLymphocyte Phenotyping - B Cell Defects (Blood)\nLymphocyte Phenotyping - B Cell Defects Part2 (Blood)\nLymphocyte Phenotyping - BM Transplant (Blood)\nLymphocyte Phenotyping - CVID (Blood)\nLymphocyte Phenotyping - Eosinophilia (Blood)\nLymphocyte Phenotyping - Eosinophils (Blood)\nLymphocyte Phenotyping - Hyper ALPS (Blood)\nLymphocyte Phenotyping - Hyper IgM (Blood)"

  if Search_Results_value.eql? Actual_Results
    puts ("The super group Searched Term: #{value}, results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
  else
    puts (fail("The super group Searched Term: #{value}, results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end

Then(/^the user verify if the super group "(.*)" results matches the Actual Group Children$/) do |value|
  Search_Results = ".//*[(@class='jstree-children')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "Lymphocyte Phenotyping - Anti-TAC (Blood)\nLymphocyte Phenotyping - Anti-TAC 2 (Blood)\nLymphocyte Phenotyping - TAC (Blood)\nLymphocyte Phenotyping - TAC Part2 (Blood)\nLymphocyte Phenotyping - TRL (Blood)\nLymphocyte Phenotyping - Cutaneous T Cell (Blood)\nLymphocyte Phenotyping - LAD-1 (Blood)\nLymphocyte Phenotyping - LAD (Blood)\nLymphocyte Phenotyping - PID (Blood)\nLymphocyte Phenotyping - Hyper MAC (Blood)\nLymphocyte Phenotyping - HyperMAC (Blood)\nLymphocyte Phenotyping - MAC (Blood)\nLymphocyte Phenotyping - IL-15 (Blood)\nFlow Cytometry - CRIMSON (Blood)\nLymphocyte Phenotyping - LGL (Blood)\nLymphocyte Phenotyping - Large Granular Lymphoma (Blood)\nRevised Algorithm for Lymphocyte Phenotyping - CRIMSON (Blood)\nLymphocyte Phenotyping - Large Granular Lymphoma 1 (Blood)\nLymphocyte Phenotyping - Large Granular Lymphoma 3 (Blood)\nLymphocyte Phenotyping - LGL1 (Blood)\nEosinophil Phenotyping (Blood)\nLymphocyte Phenotyping - Myo/Rituximab (Blood)\nLymphocyte Phenotyping - SCID (Blood)\nLymphocyte Phenotyping - Abnormal(manual) (Blood)\nLymphocyte Phenotyping - ALP Syndrome (Blood)\nLymphocyte Phenotyping - ALPS (Blood)\nLymphocyte Phenotyping - Atopy (Blood)\nLymphocyte Phenotyping - Autoimmune 2 (Blood)\nLymphocyte Phenotyping - Autoimmunity 2 (Blood)\nLymphocyte Phenotyping - B Cell Defect (Blood)\nLymphocyte Phenotyping - B Cell Defect 2 (Blood)\nLymphocyte Phenotyping - B Cell Defect Part2 (Blood)\nLymphocyte Phenotyping - B Cell Defects (Blood)\nLymphocyte Phenotyping - B Cell Defects Part2 (Blood)\nLymphocyte Phenotyping - BM Transplant (Blood)\nLymphocyte Phenotyping - CVID (Blood)\nLymphocyte Phenotyping - Eosinophilia (Blood)\nLymphocyte Phenotyping - Eosinophils (Blood)\nLymphocyte Phenotyping - Hyper ALPS (Blood)\nLymphocyte Phenotyping - Hyper IgM (Blood)\nLymphocyte Phenotyping - Hyper IgM Part2 (Blood)\nLymphocyte Phenotyping - Hyper IgM Part4 (Blood)\nLymphocyte Phenotyping - Hyper IgM2 (Blood)\nLymphocyte Phenotyping - HyperALPS (Blood)\nLymphocyte Phenotyping - Manual (Blood)\nLymphocyte Phenotyping - Myositis Rituximab (Blood)\nLymphocyte Phenotyping - SCID (Blood)\nLymphocyte Phenotyping - TBNK (Blood)\nLymphocyte Phenotyping - TBNK, CLL Patients (Blood)\nLymphocyte Phenotyping - TBNK+EOS (Blood)\nLymphocyte Phenotyping - CLL (Blood)\nLymphocyte Phenotyping - GVHD (Blood)\nLymphocyte Phenotyping - Bone Marrow (Blood)\nLymphocyte Phenotyping - BMT Engraftment (Blood)\nLymphocyte Phenotyping - ALP Syndrome Part2 (Blood)\nLymphocyte Phenotyping - ALPS 2 (Blood)\nLymphocyte Phenotyping - Alzheimer (Blood)\nLymphocyte Phenotyping - Basic (Blood)\nLymphocyte Phenotyping - Bone Marrow Engraftment (Blood)\nLymphocyte Phenotyping - CTLA (Blood)\nLymphocyte Phenotyping - ICL (Blood)\nLymphocyte Phenotyping - IL6-R Part 2 (Blood)\nLymphocyte Phenotyping - IL6-R-2 (Blood)\nLymphocyte Phenotyping - Large Granular Lymphoma 2 (Blood)\nLymphocyte Phenotyping - Large Granular Lymphoma 4 (Blood)\nLymphocyte Phenotyping - LGL2 (Blood)\nLymphocyte Phenotyping - NK Subsets (Blood)\nLymphocyte Phenotyping - PANDA (Blood)\nLymphocyte Phenotyping - Ped Oncology (Blood)\nLymphocyte Phenotyping - Ped Oncology 2 (Blood)\nLymphocyte Phenotyping - Pediatric Oncology (Blood)\nLymphocyte Phenotyping - Pediatric Oncology Part2 (Blood)\nLymphocyte Phenotyping - TVB (Blood)\nLymphocyte Phenotyping - Anti-TAC 1 (Blood)\nLymphocyte Phenotyping - TAC Part1 (Blood)\nLymphocyte Phenotyping - ALP Syndrome Part1 (Blood)\nLymphocyte Phenotyping - ALPS 1 (Blood)\nLymphocyte Phenotyping - Autoimmune 1 (Blood)\nLymphocyte Phenotyping - Autoimmunity 1 (Blood)\nLymphocyte Phenotyping - B Cell Defect 1 (Blood)\nLymphocyte Phenotyping - B Cell Defect Part1 (Blood)\nLymphocyte Phenotyping - B Cell Defects Part1 (Blood)\nLymphocyte Phenotyping - CD4/CD8 (Blood)\nLymphocyte Phenotyping - Hyper IgM Part1 (Blood)\nLymphocyte Phenotyping - Hyper IgM1 (Blood)\nLymphocyte Phenotyping - IL6-R 1 (Blood)\nLymphocyte Phenotyping - IL6-R Part 1 (Blood)\nLymphocyte Phenotyping - Ped Oncology 1 (Blood)\nLymphocyte Phenotyping - Pediatric Oncology Part1 (Blood)\nLymphocyte Phenotyping - IL 2 Receptor CD25 (Blood)\nLymphocyte Phenotyping - DHR Assay - CGD (Blood)\nLymphocyte Phenotyping - DHR Assay (Blood)"

  if Search_Results_value.eql? Actual_Results
    puts ("The Super Group Searched Term: #{value}, results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
  else
    puts (fail("The Super Group Searched Term: #{value}, results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end


Then(/^the user verify if the cluster group Children for "(.*)" matches the Actual Group Children$/) do |value|
  Search_Results = ".//*[@id='S10001|G10410']/ul"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "CD11a PMNs % (Blood)\nCD11a PMNs GMC (Blood)\nCD11b PMNs % (Blood)\nCD11b PMNs GMC (Blood)\nCD11c PMNs % (Blood)\nCD11c PMNs GMC (Blood)\nCD18 PMN MFI % of NIH Control (Blood)\nCD18 PMN MFI (Blood)\nCD18 PMN MFI for NIH Control (Blood)\nCD18 PMNs % (Blood)\nCD18 PMNs GMC (Blood)\nCD18 PMNs GMC for NIH Control (Blood)"

  if Search_Results_value.eql? Actual_Results
    puts ("The 3rd level Super Group Searched Result: #{value}, Children: #{Search_Results_value}. Matches the Actual Children: #{Actual_Results}.")
  else
    puts (fail("The 3rd level Super Group Searched Result: #{value}, Children: #{Search_Results_value}. DID NOT Match the Actual Children: #{Actual_Results}."))
  end
end


And(/^the user verify that searched "(.*)" is available$/) do |value|
  sleep 2
  page_html = @browser.html
  Report_Error = "No lists found"

  if page_html.include? Report_Error
    step "user refresh the browser"
    sleep 3
    step "the user enters \"#{value}\" into \"fine protocol and subject search box\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"protocol verify count\" field into \"Number OF Subjects\" on \"Btris/Portal\" page"
  else
    if page_html.include? Report_Error
      Error = ".//*[@class='empty-message'][contains(text(), 'No lists found')]"
      Error_Message = get_element_text 'xpath', "#{Error}"
      puts (fail("The search protocol return ERROR, #{Error_Message}"))
    else
      puts "Protocol found"
    end
  end
end

Then(/^the user verify if the saved list with name "(.*)" already exist and overwrite it$/) do |value|
  sleep 2
  page_html = @browser.html
  Saved_Message_Successful = "List successfully saved"
  Saved_Message_List_Exist = "There was 1 error with your submission:"

  if page_html.include? Saved_Message_Successful
    puts "Custom Lab List was Successfully Saved"
  else
        if page_html.include? "already exists for"
          step "the user must see \"List named \"#{value}\" already exists for btris_test2\" text in \"save lab custom list error display\" field on \"Btris/Portal\" page"
          step "the user clicks on \"overwrite existing list check-box\" element on \"Btris/Portal\" page"
          step "the user clicks on \"save button\" element on \"Btris/Portal\" page"
          sleep 2
          page_html1 = @browser.html
          if page_html1.include? "MISCONF Redis is configured to save RDB snapshots"
          Error = ".//*[@class='form-errors__error-list']"
          Error_Message = get_element_text 'xpath', "#{Error}"
          puts (fail("The custom list was not successfully saved, display ERROR is, #{Error_Message}"))
          end
          step "the user must see \"List successfully saved\" text in \"save list feedback\" field on \"Btris/Portal\" page"
        else
          if page_html.include? Saved_Message_List_Exist
            puts 'Custom Lab List return with error' + Saved_Message_List_Exist
            error_display_path = ".//*[@class='form-errors__error-list']"
            error_message = get_elements_size 'xpath', "#{error_display_path}"
            else
          Error = ".//*[@class='form-errors__error-list']"
          Error_Message = get_element_text 'xpath', "#{Error}"
          puts (fail("The custom list was not successfully saved, display ERROR is, #{Error_Message}"))
        end
      end
    end
  end



Then(/^the user check that protocols are loaded$/) do
  sleep 2
  page_html = @browser.html
  Protocol_Message = "No protocols found"


  if page_html.include? Protocol_Message
    step "the user must see \"Unable to load protocols\" text in \"protocol load status\" field on \"Btris/Portal\" page"
    Error = ".//*[@class='noty_body']"
    Error_Message = get_element_text 'xpath', "#{Error}"
    puts (fail("The manage protocol data filed to load, display ERROR is, #{Error_Message}"))
  else
    puts "Manage Protocol data loaded Successfully"

  end
end


Then(/^the user verify if cluster search is added to the current executing environment$/) do
  step "the user must see \"Add Labs\" text in \"search lab cluster pop-up\" field on \"Btris/Portal\" page"
  page_html = @browser.html
  None_Cluster = "Search Type"
  if page_html.include? None_Cluster

    search_location = ".//*[@id='labs-red-term-search-type']"
    Search_Type = get_element_text 'xpath', "#{search_location}"
    puts (fail("The environment does not have the new Cluster Search implementation, still running with  #{Search_Type} search types"))
  else
    puts "Executing environment has the updated cluster search"
  end
end

And(/^the user verify if the subjects were downloaded successfully$/) do
  sleep 3
  page_html = @browser.html
  error = "This site can’t be reached"
  if page_html.include? error
    page_error = ".//*[@id='main-message']"
    Actual_Error = get_element_text 'xpath', "#{page_error}"
    puts (fail("The Download Subjects Failed with the follow error:  #{Actual_Error}"))
  else
    puts "Protocols downloaded successfully"
  end
end

And(/^the user delete "(.*)" added the second time$/) do |value|
  sleep 2
  page_text = @browser.html
  if page_text.include? value
    sleep 2
    step "the user clicks on \"reference list: search list check box\" element on \"Btris/Portal\" page"
    sleep 2
    step "the user clicks the link with text \"Remove\""
    #step "the user clicks on \"custom search term list remove button\" element on \"Btris/Portal\" page"
    sleep 2
    step "the user clicks on \"custom search term list confirm remove\" element on \"Btris/Portal\" page"
    Remove_Reference_List = ".//*[contains(text(), 'Reference list removed')]"
    Remove_Reference_List_Confirmation = get_element_text 'xpath', "#{Remove_Reference_List}"
    if Remove_Reference_List_Confirmation.include? "Reference list removed"
      step "the user must see \"Reference list removed\" text in \"reference list remove confirmation\" field on \"Btris/Portal\" page"
      puts "Reference list removed removed successfully"
    else
      puts (fail("The Reference list FAILED to be removed with ERROR, #{Remove_Reference_List_Confirmation}"))
    end
  else
    puts "No existing #{value} added by the test exist which matches"
  end
end


And(/^the user verify if "(.*)" from data feedback is return$/) do |value|
  sleep 1
  page_html = @browser.html
  if page_html.include? value
    page_error = ".//*[@class='cluster-picker__search-results']/div/strong"
    Actual_Error = get_element_text 'xpath', "#{page_error}"
    puts (fail("The Add Lab search results return: #{Actual_Error}, please check to make sure you have data in the #{ENV['TEST_ENV']} environment"))
  end
end


And(/^the user verify if "(.*)" from the search result is return$/) do |value|
  sleep 1
  page_html = @browser.html
  if page_html.include? value
    page_error = ".//*[@class='cluster-picker__search-results']/div/strong"
    Actual_Error = get_element_text 'xpath', "#{page_error}"
    puts (fail("The Add Vital Sign search results return: #{Actual_Error}, please check to make sure you have data in the #{ENV['TEST_ENV']} environment"))
  end
end


Then(/^the user verify that the lab cluster has no error$/) do
  sleep 1
  page_html = @browser.html
  Labs_Error = "Error searching for Labs"
  if page_html.include? Labs_Error
    page_error = ".//*[@class='noty_body']"
    Actual_Error = get_element_text 'xpath', "#{page_error}"
    puts (fail("The Lab cluster search returns Error: #{Actual_Error}, please check to make sure you have Lab clusters data in the #{ENV['TEST_ENV']} environment"))
  end
end


And(/^the user verify if protocols exist$/) do
  sleep 1
  page_html = @browser.html
  Labs_Error = "No protocols found"
  if page_html.include? Labs_Error
    page_error = ".//*[@class='empty-message']"
    Actual_Error = get_element_text 'xpath', "#{page_error}"
    puts (fail("The CIBMTR returns Message: #{Actual_Error}, please check to make sure you have CIBMTR data loaded correctly in the #{ENV['TEST_ENV']} environment"))
  end
end



Then(/^the user verify if cluster search "(.*)" is added to the current executing environment$/) do |value|
  step "the user must see \"#{value}\" text in \"search lab cluster pop-up\" field on \"Btris/Portal\" page"
  page_html = @browser.html
  None_Cluster = "Search Type"
  if page_html.include? None_Cluster

    search_location = ".//*[@id='labs-red-term-search-type']"
    Search_Type = get_element_text 'xpath', "#{search_location}"
    puts (fail("The environment does not have the new Cluster Search implementation, still running with  #{Search_Type} search types"))
  else
    puts "Executing environment has the updated cluster search"
  end
end

Then(/^the user verify that the Vital Signs cluster has no error$/) do
  sleep 1
  page_html = @browser.html
  Labs_Error = "Error searching for Labs"
  if page_html.include? Labs_Error
    page_error = ".//*[@class='noty_body']"
    Actual_Error = get_element_text 'xpath', "#{page_error}"
    puts (fail("The Vital Signs cluster search returns Error: #{Actual_Error}, please check to make sure you have Vital Signs clusters data in the #{ENV['TEST_ENV']} environment"))
  end
end

Then(/^the user verify if the vital signs search results for "(.*)" matches the actual results$/) do |value|
  Search_Results = ".//*[(@data-test='red-node red-node-E7075')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "Temperature"

  if Search_Results_value.eql? Actual_Results
    puts ("The Cluster Items Searched Term: #{value}, results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
  else
    puts (fail("The Cluster Items Searched Term: #{value}, results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end

Then(/^the user verify if the search vital signs results for "(.*)" matches the "(.*)"$/) do |value, value2|
  Search_Results = ".//*[(@data-test='red-node red-node-E6794')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = value2

  if Search_Results_value.eql? Actual_Results
    puts ("The Cluster Item Searched Term: #{value}, results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
  else
    puts (fail("The Cluster Item Searched Term: #{value}, results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end

Then(/^the user verify if the search term results for "(.*)" matches the actual results$/) do |value|
  Search_Results = ".//*[(@class='card red-picker__cluster-picker-tree-container')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "Girth, Abdominal\nGirth, Abdominal?/Unspecified"

  if Search_Results_value.eql? Actual_Results
    puts ("The Cluster Items Searched Term: #{value}, results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
  else
    puts (fail("The Cluster Items Searched Term: #{value}, results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end


Then(/^the user verify if the cluster group term "(.*)" results matches the Actual Group Children$/) do |value|
  Search_Results = ".//*[(@class='jstree-children')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "Temperature, Skin\nTemperature Device\nTemperature Source\nCell Product Infusion: Temperature\nCell Product Infusion: Temperature Device\nCell Product Infusion: Temperature Source\nDialysis: Temperature\nDialysis: Temperature Device Used\nDialysis: Temperature Source\nDTM, Apheresis/Therapeutic Phlebotomy: Temperature 2\nDTM, Apheresis/Therapeutic Phlebotomy: Temperature Post\nDTM, Apheresis/Therapeutic Phlebotomy: Temperature Pre\nEchocardiogram: Temperature\nNeuroimmunology: Sensory Temperature Test\nNeuroimmunology: Sensory Temperature Test Comment\nProcedure Note, Post: Temperature\nProcedure Note: Temperature\nProcedure Observations, Post: Temperature\nProcedure Observations, Post: Temperature Device Used\nProcedure Observations, Post: Temperature Source\nRadiology: Skin Temperature\nRapid Response Note: Temperature\nRespiratory Therapy: Temperature\nSickle Cell Transfusion: Temperature"

  if Search_Results_value.eql? Actual_Results
    puts ("The Cluster Panel Group Searched Term: #{value}, results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
  else
    puts (fail("The Cluster Panel Group Searched Term: #{value}, results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end

Then(/^the user verify if the vital signs cluster panel group "(.*)" matches the Actual Group Children$/) do |value|
  Search_Results = ".//*[(@class='jstree-children')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "Echocardiogram: Body Surface Area (BSA)\nLab-Related: Body Surface Area (BSA)\nRespiratory Therapy: Body Surface Area (BSA)\nTransplant: Chronic GHVD % BSA Involvement\nTransplant: Engraftment Symptoms BSA"

  if Search_Results_value.eql? Actual_Results
    puts ("The Cluster Panel Group Searched Term: #{value}, results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
  else
    puts (fail("The Cluster Panel Group Searched Term: #{value}, results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end

And(/^the user verify if the subject is consented$/) do
  page_alert = ".//*[@class='noty_body']"
  Actual_Message = get_element_text 'xpath', "#{page_alert}"
  Expected_Message = "Subject consented"
  if Actual_Message.eql? Expected_Message
    puts ("The subject is successfully consented with message: #{Actual_Message}")
  else
    puts ("The subject has been Unconsented with message: #{Actual_Message}, the subject will now be Consented")
    step "the user clicks on \"subject consented switch\" element on \"Manage/Subjects\" page"
    sleep 1
    page_alert2 = ".//*[@class='noty_body'][contains(text(), 'Subject consented')]"
    Actual_Message2 = get_element_text 'xpath', "#{page_alert2}"
    Expected_Message2 = "Subject consented"
    if Actual_Message2.eql? Expected_Message2
      puts ("The subject is successfully consented with message: #{Actual_Message2}")
    else
      puts (fail("The subject Failed to be consented with message: #{Actual_Message2},"))

    end
  end
end


And(/^the user verify if the subject is unconsented$/) do
  page_alert = ".//*[@class='noty_body']"
  Actual_Message = get_element_text 'xpath', "#{page_alert}"
  Expected_Message = "Subject unconsented"
  if Actual_Message.eql? Expected_Message
    puts ("The subject is successfully unconsented with message: #{Actual_Message}")
  else
    puts ("The subject has been consented with message: #{Actual_Message}, the subject will now be unconsented")
    step "the user clicks on \"subject consented switch\" element on \"Manage/Subjects\" page"
    sleep 1
    page_alert2 = ".//*[@class='noty_body'][contains(text(), 'Subject unconsented')]"
    Actual_Message2 = get_element_text 'xpath', "#{page_alert2}"
    Expected_Message2 = "Subject unconsented"
    if Actual_Message2.eql? Expected_Message2
      puts ("The subject is successfully unconsented with message: #{Actual_Message2}")
    else
      puts (fail("The subject Failed to be unconsented with message: #{Actual_Message2},"))

    end
  end
end

Then(/^the user verify if the presentation cluster panel group for SARS "(.*)" matches the Actual Group Children$/) do |value|
  Search_Results = ".//*[(@class='jstree-children')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "Coronavirus SARS-CoV-2 Antibody (Blood)\nCoronavirus SARS-CoV-2 PCR (BAL)\nCoronavirus SARS-CoV-2 PCR (Mask)\nCoronavirus SARS-CoV-2 PCR, Employee, DLM (Midturbinate Swab)\nCoronavirus SARS-CoV-2 PCR, Employee, DTM (Midturbinate Swab)\nCoronavirus SARS-CoV-2 PCR (Nares)\nCoronavirus SARS-CoV-2 PCR (NP Swab)\nCoronavirus SARS-CoV-2 PCR Surveillance (NP Swab)\nCoronavirus SARS-CoV-2 PCR, Employee, DLM (NP Swab)\nCoronavirus SARS-CoV-2 Xpert Real-Time RT-PCR (NP Swab)\nCoronavirus SARS-CoV-2 PCR (NP Wash)\nCoronavirus SARS-CoV-2 PCR Surveillance (NP Wash)\nCoronavirus SARS-CoV-2 Xpert Real-Time RT-PCR (NP Wash)\nCoronavirus SARS-CoV-2 PCR (Oropharyngeal Swab)\nCoronavirus SARS-CoV-2 PCR Surveillance (Oropharyngeal Swab)\nCoronavirus SARS-CoV-2 PCR (Other)\nCoronavirus SARS-CoV-2 Xpert Real-Time RT-PCR (Other)\nCoronavirus SARS-CoV-2 PCR (Parotid)\nCoronavirus SARS-CoV-2 PCR (Saliva)\nCoronavirus SARS-CoV-2 PCR Screen (Saliva)\nCoronavirus SARS-CoV-2 PCR, Employee, DLM (Saliva)\nCoronavirus SARS-CoV-2 PCR (Speak)\nCoronavirus SARS-CoV-2 PCR (Submandibular Gland)"

  if Search_Results_value.eql? Actual_Results
    puts ("The Presentation Cluster Group Searched Term: #{value}, results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
  else
    puts (fail("The Presentation Cluster Group Searched Term: #{value}, results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end

Then(/^the user verify if the cluster panel group for SARS "(.*)" matches the Actual Group Children$/) do |value|
  Search_Results = ".//*[(@class='card red-picker__cluster-picker-tree-container')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "Coronavirus 229E (Multiple Specimen Types)\nCoronavirus HKU1 (Multiple Specimen Types)\nCoronavirus NL63 (Multiple Specimen Types)\nCoronavirus OC43 (Multiple Specimen Types)\nCoronavirus SARS-CoV-2 (Multiple Specimen Types)"

  if Search_Results_value.eql? Actual_Results
    puts ("The Presentation Cluster Group Searched Term: #{value}, results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
  else
    puts (fail("The Presentation Cluster Group Searched Term: #{value}, results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end

Then(/^the user verify if the search ingredients "(.*)" matches the Actual Results$/) do |value|
  sleep 1
  Search_Results = ".//*[(@class='jstree-anchor')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "Prednisone"

  if Search_Results_value.eql? Actual_Results
    puts ("The Ingredients Searched Term: #{value}, results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
    step "the user clicks on \"single cat result\" element on \"Meds/Ufo\" page"

  else
    puts (fail("The Ingredients Searched Term: #{value}, results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end

Then(/^the user verify if the second search ingredients "(.*)" matches the Actual Results$/) do |value|
  sleep 1
  Search_Results = ".//*[(@class='card red-picker__cluster-picker-tree-container')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "Atropine/Benzoic Acid/Hyoscyamine/Methenamine/Methylene Blue/Phenyl Salicylate Combination\nBenzoic Acid/Hyoscyamine/Methenamine/Methylene Blue/Phenyl Salicylate Combination\nBismuth Subsalicylate\nCholine Salicylate\nMagnesium Salicylate\nMethyl Salicylate\nPhysostigmine\nSodium Salicylate\nTrolamine"
  puts ("The Ingredients Searched Term results are: #{Search_Results_value}")
  if Search_Results_value.eql? Actual_Results
    puts ("The Ingredients Searched Term: #{value}, results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
    step "the user clicks on \"ingredients record #3\" element on \"Meds/Ufo\" page"

  else
    puts (fail("The Ingredients Searched Term: #{value}, results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end

Then(/^the user verify if the third search ingredients "(.*)" matches the Actual Results$/) do |value|
  sleep 1
  Search_Results = ".//*[(@class='card red-picker__cluster-picker-tree-container')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "15-Methyl Prostaglandin E2\n566-C-80 MEDICATION\nA1Antiprotease\nAbciximab\nAcamprosate\nAcetaminophen\nAlbuterol\nAlclometasone\nAldesleukin\nAlpha-1 Proteinase Inhibitor\nAlprostadil\nAminocaproic Acid\nAmmonium Lactate\nAmylase/Cellulase/Protease Combination\nAnti-Prostate Specific Antigen Vaccine\nAprotinin\nAspirin\nAtovaquone\nAzelastine\nBalsam Peru/Castor Oil"
  puts ("The Ingredients Searched Term results are: #{Search_Results_value}")
  if Search_Results_value.eql? Actual_Results
    puts ("The Ingredients Searched Term: #{value}, results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
    step "the user clicks on \"ingredients record #3\" element on \"Meds/Ufo\" page"

  else
    puts (fail("The Ingredients Searched Term: #{value}, results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end

Then(/^the user verify if the 4th search ingredients "(.*)" matches the Actual Results$/) do |value|
  sleep 1
  Search_Results = ".//*[(@class='jstree-anchor')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "Acyclovir"
  puts ("The Ingredients Searched Term results are: #{Search_Results_value}")

  if Search_Results_value.eql? Actual_Results
    puts ("The Ingredients Searched Term: #{value}, results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
    step "the user clicks on \"ingredients record #3\" element on \"Meds/Ufo\" page"

  else
    puts (fail("The Ingredients Searched Term: #{value}, results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end

Then(/^the user verify if the 5th search ingredients "(.*)" matches the Actual Results$/) do |value|
  sleep 1
  Search_Results = ".//*[(@data-test='red-tree')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "Acetaminophen/Butabarbital Sodium/Caffeine Combination\nAlendronate\nAluminum Hydroxide/Magnesium Hydroxide/Simethicone Combination\nAurothiomalate\nBalsalazide\nBenzoate\nCalcium Disodium Edetate\nCalcium Gluconate/Multivitamin/Potassium Phosphate/Regular Insulin/Sodium Chloride/Trace Minerals Combination\nCalcium Trisodium Pentetate\nChlorophyllin Copper Complex Sodium/Papain/Urea Combination\nCilastatin\nCitric Acid\nColistimethate\nCromolyn\nDantrolene\nDenufosol\nDextose/Sodium Bicarbonate Combination\nDextrose/Folic Acid/Magnesium Sulfate/Potassium Phosphate/Regular Insulin/Sodium Chloride Combination\nDextrose/Magnesium Sulfate/Potassium Chloride/Regular Insulin/Sodium Chloride Combination\nDiatrizoate Sodium"
  puts ("The Ingredients Searched Term results are: #{Search_Results_value}")

  if Search_Results_value.eql? Actual_Results
    puts ("The Ingredients Searched Term: #{value}, results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
    step "the user clicks on \"ingredients record #3\" element on \"Meds/Ufo\" page"

  else
    puts (fail("The Ingredients Searched Term: #{value}, results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end




And(/^the user select all the cluster search results with "(.*)"$/) do |value|
  record_found = false
  table_path = ".//*[@data-test='red-tree']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//ul/li/i"
  puts ("the number of records are  #{check_record_present}")
  if check_record_present > 0
    table_rows = get_elements_size 'xpath', "#{table_path}"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}//ul"
      puts 'The report to delete is or are ' +delete_icons_row
      search_term = value
      if delete_icons_row.downcase.include? search_term
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}//ul//*[(@tabindex='-1')]"
        click_web_element del_obj
        sleep 2
      end
    end
    checkpoint (record_found.eql? true), "No data found in search results with words that contains search string: #{value}"
  end
end

# record_found = false
# table_path = ".//*[@class='table saved-reports-table hover-row-highlight']"
# check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
# if check_record_present > 0
#   table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
#   (1..table_rows).each do |rows|
#     delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[1]/td[2]"
#     puts 'The report to delete is or are ' +delete_icons_row
#     new_report = "#{value}"
#     if delete_icons_row.downcase.eql? new_report.downcase
#       record_found = true
#       del_obj = get_element_obj 'xpath', "#{table_path}//*[contains(text(), 'Delete')]"
#       click_web_element del_obj
#       step "the user clicks on \"confirm delete button for saved report\" element on \"Save/Reports\" page"
#       sleep 2
#     end
#   end
#   checkpoint (record_found.eql? true), "No data found in table that matches the added Saved Reports Configuration"
# end
# end



Then(/^the user verify if the search category with abbreviation "(.*)" matches the Actual Results$/) do |value|
  sleep 1
  Search_Results = ".//*[(@class='jstree-anchor')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "Parenteral Nutrition"
  puts ("The Categories Searched Term results are: #{Search_Results_value}")

  if Search_Results_value.eql? Actual_Results
    puts ("The Categories Searched Term: #{value}, results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
    step "the user clicks on \"ingredients record #3\" element on \"Meds/Ufo\" page"

  else
    puts (fail("The Categories Searched Term: #{value}, results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end



Then(/^the user verify if the search category "(.*)" matches the Actual Results$/) do |value|
  sleep 1
  Search_Results = ".//*[(@class='jstree-anchor')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "Aminoglycoside Agent"
  puts ("The Categories Searched Term results are: #{Search_Results_value}")

  if Search_Results_value.eql? Actual_Results
    puts ("The Categories Searched Term: #{value}, results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
    step "the user clicks on \"ingredients record #3\" element on \"Meds/Ufo\" page"

  else
    puts (fail("The Categories Searched Term: #{value}, results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end

Then(/^the user verify if the search category results "(.*)" matches the Actual Results$/) do |value|
  sleep 1
  Search_Results = ".//*[(@class='card red-picker__cluster-picker-tree-container')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "Antibacterial Agent\nAntibacterial Antineoplastic Agent"
  puts ("The Categories Searched Term results are: #{Search_Results_value}")

  if Search_Results_value.eql? Actual_Results
    puts ("The Categories Searched Term: #{value}, results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
    #step "the user clicks on \"ingredients record #3\" element on \"Meds/Ufo\" page"

  else
    puts (fail("The Categories Searched Term: #{value}, results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end

Then(/^the user verify if the search category result children "(.*)" matches the Actual Results$/) do |value|
  sleep 1
  Search_Results = ".//*[(@class='card red-picker__cluster-picker-tree-container')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "Antibacterial Agent\nShow Ingredients\nAminoglycoside Agent\nAnti-leprosy Agent\nAntibacterial Sulfonamide Preparation\nAntimycobacterial Agent\nCarbapenem Antibiotic Agent\nCephalosporin Agent\nLincosamide Antimicrobial Agent\nMacrolide Antibacterial Agent\nMonobactam Antibacterial Agent\nPenicillin Class Antibacterial Agent\nQuinolone Agent\nSulfone Antibiotic\nTetracycline Agent\nAntibacterial Antineoplastic Agent"
  puts ("The Categories Searched Term results are: #{Search_Results_value}")

  if Search_Results_value.eql? Actual_Results
    puts ("The Categories Searched Term: #{value}, Children Results: #{Search_Results_value}. Matches the Actual Children Results: #{Actual_Results}.")
    step "the user clicks on \"ingredients record #3\" element on \"Meds/Ufo\" page"

  else
    puts (fail("The Categories Searched Term: #{value}, Children Results: #{Search_Results_value}. DID NOT Match the Actual Children Results: #{Actual_Results}."))
  end
end

And(/^the user type test progress$/) do
  puts 'The test has pass verification'
end

And(/^the user verify is list with name "(.*)" on domain "(.*)" uploaded with template name "(.*)" by user "(.*)" exist$/) do |value1, value2, value3, value4|
  sleep 2

  page_html = @browser.html
  list_name = "T - Medication Template 01"

  if page_html.include? list_name


    Search_Results = ".//*[@id='select-custom-list-mutli-select']//*[contains(text(), 'T - Medication Template 01')]"
    Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
    Actual_Results = "T - Medication Template 01"
    puts ("The loaded custom list is: #{Search_Results_value}")

    puts ("The Loaded Custom List: #{Search_Results_value}, already exist and will be selected")
    del_obj = get_element_obj 'xpath', "#{Search_Results}"
    click_web_element del_obj
    step "the user clicks on \"medication list\" element on \"Btris/Portal\" page"
    step "the user clicks on \"load selected list button\" element on \"Btris/Portal\" page"
    sleep 2
    page_html = @browser.html
    list_select_alert = "Select at least one list"
    if page_html.include? list_select_alert
      feedback_message_field = "//*[@class='form-control-feedback']"
      feedback_message = get_element_text 'xpath', "#{feedback_message_field}"
      puts (fail("The Custom Medication List with name: #{list_name}, was not successfully selected error message: #{feedback_message}, is display"))
    end

  else
    step "the user clicks on \"cancel button\" element on \"Btris/Portal\" page"
    step "the user clicks on \"custom user drop down\" element on \"Btris/Portal\" page"
    #Clcik on custom list.
    step "the user clicks on \"custom list\" element on \"Btris/Portal\" page"
    step "the user clicks on \"left nav: search term list\" element on \"Btris/Portal\" page"
    step "the user enters \"#{value1}\" into \"custom list search term box\" on \"Btris/Portal\" page"
    step "the user verify if existing \"#{value1}\" exist and remove it"
    step "the user clicks on \"custom search term list upload button\" element on \"Btris/Portal\" page"
    step "the user remembers the value of \"upload search term list page title\" field into \"Page Title\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"overwrite existing list\" field into \"Page Text\" on \"Btris/Portal\" page"
    step "the user enters \"#{value4}\" into \"custom search term list: user field\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"custom search term list: user\" field into \"User Name\" on \"Btris/Portal\" page"
    step "the user clicks on \"custom search term list: user\" element on \"Btris/Portal\" page"
    step "the user clicks on \"custom search term overwrite checkbox\" element on \"Btris/Portal\" page"
    step "the user enters \"#{value1}\" into \"custom search term list: list name field\" on \"Btris/Portal\" page"
    step "the user enters \"Automation Description Test Text\" into \"custom search term list: description\" text area box on \"Btris/Portal\" page"
    step "the user selects \"#{value2}\" from \"custom search term list: domain drop down\" drop down on \"Btris/Portal\" page"
    step "user attached \"#{value3}\" file into \"custom search term list: brows upload\" on \"Btris/Portal\" page"
    step "the user clicks on \"custom search term list: upload button\" element on \"Btris/Portal\" page"
    step "the user must see \"Upload succeeded\" text in \"upload status\" field on \"Btris/Portal\" page"
    step "the user waits for 2 seconds"
    step "the user must see \"Search Term Lists\" text in \"search term list table\" field on \"Btris/Portal\" page"
    step "the user clicks on \"nav arrow to active protocol\" element on \"Btris/Portal\" page"
    step "the user clicks on \"load custom list link\" element on \"Btris/Portal\" page"

    Search_Results = ".//*[@id='select-custom-list-mutli-select']//*[contains(text(), 'T - Medication Template 01')]"
    Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
    Actual_Results = "T - Medication Template 01"
    puts ("The loaded custom list is: #{Search_Results_value}")

    puts ("The Loaded Custom List: #{Search_Results_value}, already exist and will be selected")
    del_obj = get_element_obj 'xpath', "#{Search_Results}"
    click_web_element del_obj
    step "the user clicks on \"medication list\" element on \"Btris/Portal\" page"
    step "the user clicks on \"load selected list button\" element on \"Btris/Portal\" page"
    step "the user waits for 1 seconds"
    page_html = @browser.html
    list_select_alert = "Select at least one list"
    if page_html.include? list_select_alert
      feedback_message_field = "//*[@class='form-control-feedback']"
      feedback_message = get_element_text 'xpath', "#{feedback_message_field}"
      puts (fail("The Custom Medication List with name: #{list_name}, was not successfully selected error message: #{feedback_message}, is display"))
    end
  end
end


Then(/^the user verify if the search category with showing more ingredients "(.*)" matches the Actual Results$/) do |value|
  sleep 1
  Search_Results = ".//*[(@class='jstree-anchor')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "Salicylate Agent"
  puts ("The Categories Searched Term results are: #{Search_Results_value}")

  if Search_Results_value.eql? Actual_Results
    puts ("The Categories Searched Term: #{value}, results: #{Search_Results_value}. Matches the Actual Results: #{Actual_Results}.")
    step "the user clicks on \"ingredients record #3\" element on \"Meds/Ufo\" page"

  else
    puts (fail("The Categories Searched Term: #{value}, results: #{Search_Results_value}. DID NOT Match the Actual Results: #{Actual_Results}."))
  end
end


Then(/^the user hovers on "(.*)" and clicks on "(.*)" element on "(.*)" page$/) do |field_name, element_id, page_name|
  # get the XPATH or CSS from page object file , Raises Error if not found
  begin
    selector, element_path = get_element_target(field_name, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{field_name} in #{page_name} page objects File")
  end
  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{field_name} in #{page_name} page objects File")
  end
  selector = (selector.downcase.include? 'xpath') ? :xpath : :css

  begin
    selector2, element_path2 = get_element_target(element_id, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element_id} in #{page_name} page objects File")
  end
  if selector2.nil? || element_path2.nil?
    fail("Element Xpath is not found for #{element_id} in #{page_name} page objects File")
  end
  selector2 = (selector2.downcase.include? 'xpath') ? :xpath : :css

  element_obj2 = @browser.element(selector2, element_path2)

  # Create the Element object
  element_obj = @browser.element(selector, element_path)

  # Wait for element to be present
  wait_for_element(element_obj)

  # Focus on element to make it visible
  focus_on_element(element_obj)

  (element_obj).hover
  sleep 1

  click_web_element(element_obj2)

end


And(/^the user verify if the ingredients "(.*)" results from the category search matches the actual Ingredients result$/) do |value|
  sleep 1
  Search_Results = ".//*[(@class='card')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "Aspirin\nBalsalazide\nCholine Salicylate\nMagnesium Salicylate\nMesalamine\nMethyl Salicylate\nOlsalazine\nSalicylamide\nSodium Salicylate\nSulfasalazine\nTrolamine"
  puts ("The Categories Searched Term results are: #{Search_Results_value}")

  if Search_Results_value.eql? Actual_Results
    puts ("The Categories Searched Term: #{value}, Ingredients results: #{Search_Results_value}. Matches the Actual Ingredients Results: #{Actual_Results}.")

  else
    puts (fail("The Categories Searched Term: #{value}, Ingredients results: #{Search_Results_value}. DID NOT Match the Actual Ingredients Results: #{Actual_Results}."))
  end
end

And(/^the user verify if the ingredients "(.*)" results from the category search matches the actual Ingredients result SI-TC1$/) do |value|
  sleep 1

  page_html = @browser.html

  if page_html.include? "does not match any Categories in BTRIS."
    alert_path = ".//*[(@class='alert alert-warning')]"
    alert_path_value = get_element_text 'xpath', "#{alert_path}"
    puts (fail("The Categories Searched Term: #{value}, return error message: #{alert_path_value}."))
end

    Search_Results = ".//*[(@class='card')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "AVI-7100\nCR6261\nDAS181\nOseltamivir\nPeramivir"
  puts ("The Categories Searched Term results are: #{Search_Results_value}")

  if Search_Results_value.eql? Actual_Results
    puts ("The Categories Searched Term: #{value}, Ingredients results: #{Search_Results_value}. Matches the Actual Ingredients Results: #{Actual_Results}.")

  else
    puts (fail("The Categories Searched Term: #{value}, Ingredients results: #{Search_Results_value}. DID NOT Match the Actual Ingredients Results: #{Actual_Results}."))
  end
end

And(/^the user verify if the ingredients "(.*)" results from the category search matches the actual Ingredients result SI-TC2$/) do |value|
  sleep 1

  page_html = @browser.html

  if page_html.include? "does not match any Categories in BTRIS."
    alert_path = ".//*[(@class='alert alert-warning')]"
    alert_path_value = get_element_text 'xpath', "#{alert_path}"
    puts (fail("The Categories Searched Term: #{value}, return error message: #{alert_path_value}."))
  else
    if page_html.include? "\"Antiviral Transplant Agent\" has no ingredients"
      alert_path1 = ".//*[(@class='loadable-wrapper')]/strong"
      alert_path_value1 = get_element_text 'xpath', "#{alert_path1}"
      puts (fail("The Categories Searched Term: #{value}, return error message: #{alert_path_value1}."))
    end
    Search_Results = ".//*[(@class='card')]"
    Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
    Actual_Results = "A1Antiprotease\nAbacavir\nAcyclovir\nAdefovir\nAmantadine\nAmprenavir\nAplaviroc\nAsunaprevir\nAtazanavir\nAVI-7100\nBamlanivimab\nBeclabuvir\nBoceprevir\nBrincidofovir\nCapravirine\nCI-1012\nCidofovir\nCR6261\nCytomegalovirus Immune Globulin\nD-Ala-Peptide T-Amide (DAPTA)\nD-D4FC\nDaclatasvir\nDarunavir\nDAS181\nDelavirdine\nDesciclovir\nDexelvucitabine\nDidanosine\nDideoxyadenosine\nDocosanol\nDolutegravir\nEfavirenz\nElvitegravir\nElvucitabine\nEmtricitabine\nEnfuvirtide\nEntecavir\nEtravirine\nF-ddA\nFamciclovir\nFialuridine\nFosamprenavir\nFoscarnet\nFostemsavir\nGanciclovir\nGlecaprevir\nGS-5816\nGSK-572\nHIV TNFR\nHIV-1 ANTIGEN SKIN TEST Preparation\nHIV-1 SALINE SKIN TEST\nHPV 16 PEPTIDE PULSE VACCINE\nHPV LIPOPEPTIDE VACCINE\nIdoxuridine\nImiquimod\nIndinavir\nInosine Pranobex\nKNI-272\nLamivudine\nLedipasvir\nLonafarnib\nLopinavir\nMaraviroc\nMiddle East Respiratory Virus Immunoglobulin Preparation\nNavuridine\nNelfinavir\nNevirapine\nOseltamivir\nPalivizumab\nPeginterferon Alfa 2A\nPeginterferon Alfa 2B\nPenciclovir\nPeramivir\nPhosphonoformic Acid\nPibrentasvir\nPleconaril\nRaltegravir\nRecombinant Human CD4 Immunoglobulin G\nRemdesivir\nRespiratory Syncytial Virus Immunoglobulin\nRibavirin\nRilpivirine\nRimantadine\nRitonavir\nSaquinavir\nSIGA-246\nSimeprevir\nSinecatechins\nSofosbuvir\nSorivudine\nStavudine\nTelaprevir\nTenofovir\nThalidomide\nTipranavir\nTrifluridine\nTrimetrexate\nTromantadine\nValacyclovir\nValganciclovir\nVedroprevir\nVelpatasvir\nVertex-478\nVidarabine\nVoxilaprevir\nZalcitabine\nZanamivir\nZidovudine\nZMapp"
    puts ("The Categories Searched Term results are: #{Search_Results_value}")

    if Search_Results_value.eql? Actual_Results
      puts ("The Categories Searched Term: #{value}, Ingredients results: #{Search_Results_value}. Matches the Actual Ingredients Results: #{Actual_Results}.")

    else
      puts (fail("The Categories Searched Term: #{value}, Ingredients results: #{Search_Results_value}. DID NOT Match the Actual Ingredients Results: #{Actual_Results}."))
    end
  end
end


And(/^the user verify if the ingredients "(.*)" results from the category search matches the actual Ingredients result SI-TC3$/) do |value|
  sleep 1

  page_html = @browser.html

  if page_html.include? "does not match any Categories in BTRIS."
    alert_path = ".//*[(@class='alert alert-warning')]"
    alert_path_value = get_element_text 'xpath', "#{alert_path}"
    puts (fail("The Categories Searched Term: #{value}, return error message: #{alert_path_value}."))
  end

  Search_Results = ".//*[(@class='card')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "Benazepril\nCaptopril\nCilazapril\nEnalapril\nFosinopril\nLisinopril\nMoexipril\nOmapatrilat\nPerindopril\nQuinapril\nRamipril\nTemocapril\nTeprotide\nTrandolapril"
  puts ("The Categories Searched Term results are: #{Search_Results_value}")

  if Search_Results_value.eql? Actual_Results
    puts ("The Categories Searched Term: #{value}, Ingredients results: #{Search_Results_value}. Matches the Actual Ingredients Results: #{Actual_Results}.")

  else
    puts (fail("The Categories Searched Term: #{value}, Ingredients results: #{Search_Results_value}. DID NOT Match the Actual Ingredients Results: #{Actual_Results}."))
  end
end


And(/^the user verify if the ingredients "(.*)" results from the category search matches the actual Ingredients result SI-TC4$/) do |value|
  sleep 1

  page_html = @browser.html

  if page_html.include? "does not match any Categories in BTRIS."
    alert_path = ".//*[(@class='alert alert-warning')]"
    alert_path_value = get_element_text 'xpath', "#{alert_path}"
    puts (fail("The Categories Searched Term: #{value}, return error message: #{alert_path_value}."))
  end

  Search_Results = ".//*[(@class='card')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "Antipyrine\nAspirin\nBalsalazide\nBromfenac\nCelecoxib\nCholine Salicylate\nClonixinate\nDiclofenac\nDiflunisal\nDipyrone\nEtodolac\nEtoricoxib\nFenoprofen\nFlurbiprofen\nIbuprofen\nIndomethacin\nKetoprofen\nKetorolac\nMagnesium Salicylate\nMeclofenamate\nMefenamic\nMeloxicam\nMesalamine\nMethyl Salicylate\nNabumetone\nNaproxen\nNepafenac\nNimesulide\nOlsalazine\nOxaprozin\nOxyphenbutazone\nPhenylbutazone\nPiroxicam\nPropyphenazone\nRofecoxib\nSalicylamide\nSalsalate\nSodium Salicylate\nSulfasalazine\nSulindac\nTolmetin\nTrolamine\nValdecoxib\nZomepirac"

   puts ("The Categories Searched Term results are: #{Search_Results_value}")

  if Search_Results_value.eql? Actual_Results
    puts ("The Categories Searched Term: #{value}, Ingredients results: #{Search_Results_value}. Matches the Actual Ingredients Results: #{Actual_Results}.")

  else
    puts (fail("The Categories Searched Term: #{value}, Ingredients results: #{Search_Results_value}. DID NOT Match the Actual Ingredients Results: #{Actual_Results}."))
  end
end


And(/^the user verify if the ingredients "(.*)" results from the category search matches the actual Ingredients result SI-TC5$/) do |value|
  sleep 1

  page_html = @browser.html

  if page_html.include? "does not match any Categories in BTRIS."
    alert_path = ".//*[(@class='alert alert-warning')]"
    alert_path_value = get_element_text 'xpath', "#{alert_path}"
    puts (fail("The Categories Searched Term: #{value}, return error message: #{alert_path_value}."))
  end

  Search_Results = ".//*[(@class='card')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "Amikacin\nAminosalicylic Acid\nAzithromycin\nAztreonam\nBacitracin\nBedaquiline\nBoric Acid\nCapreomycin\nCefaclor\nCefadroxil\nCefamandole\nCefazolin\nCefdinir\nCefditoren\nCefepime\nCefixime\nCefonicid\nCefoperazone\nCefotaxime\nCefoxitin\nCefpodoxime\nCefprozil\nCefsulodin\nCeftaroline\nCeftazidime\nCeftibuten\nCeftriaxone\nCefuroxime\nCephalexin\nCephaloridine\nCephalothin\nCephradine\nChloramphenicol\nCilastatin\nCinoxacin\nCiprofloxacin\nClarithromycin\nClavulanate\nClindamycin\nClofazimine\nColistimethate\nCycloserine\nDalbavancin\nDalfopristin\nDapsone\nDaptomycin\nDirithromycin\nDoripenem\nErtapenem\nErythromycin\nEthambutol\nEthionamide\nFidaxomicin\nFurazolidone\nFusidic Acid\nGatifloxacin\nGemifloxacin\nGentamicin\nGrepafloxacin\nImipenem\nIsoniazid\nKanamycin\nLevofloxacin\nLincomycin\nLinezolid\nLomefloxacin\nLoracarbef\nMafenide\nMeropenem\nMethenamine\nMoxalactam\nMoxifloxacin\nMupirocin\nNalidixate\nNeomycin\nNitrofurantoin\nNitrofurazone\nNorfloxacin\nNovobiocin\nOfloxacin\nParomomycin\nPolymyxin B\nPovidone Iodine\nPyrazinamide\nQuinupristin\nRifabutin\nRifampin\nRifapentine\nRifaximin\nRoxithromycin\nSparfloxacin\nSpectinomycin\nSpiramycin\nStreptomycin\nSulbactam\nSulfabenzamide\nSulfacetamide\nSulfadiazine\nSulfadoxine\nSulfamerazine\nSulfamethazine\nSulfamethoxazole\nSulfanilamide\nSulfathiazole\nSulfisoxazole\nSulfoxone\nTedizolid\nTeicoplanin\nTelithromycin\nThalidomide\nTigecycline\nTinidazole\nTobramycin\nTrimethoprim\nTroleandomycin\nTrovafloxacin\nVancomycin"
    puts ("The Categories Searched Term results are: #{Search_Results_value}")

  if Search_Results_value.eql? Actual_Results
    puts ("The Categories Searched Term: #{value}, Ingredients results: #{Search_Results_value}. Matches the Actual Ingredients Results: #{Actual_Results}.")

  else
    puts (fail("The Categories Searched Term: #{value}, Ingredients results: #{Search_Results_value}. DID NOT Match the Actual Ingredients Results: #{Actual_Results}."))
  end
end

And(/^the user verify if the ingredients "(.*)" results from the category search matches the actual Ingredients result SI-TC6$/) do |value|
  sleep 1

  page_html = @browser.html

  if page_html.include? "does not match any Categories in BTRIS."
    alert_path = ".//*[(@class='alert alert-warning')]"
    alert_path_value = get_element_text 'xpath', "#{alert_path}"
    puts (fail("The Categories Searched Term: #{value}, return error message: #{alert_path_value}."))
  end

  Search_Results = ".//*[(@class='card')]"
  Search_Results_value = get_element_text 'xpath', "#{Search_Results}"
  Actual_Results = "Anti-Carcinoembryonic Antigen Vaccine\nAnti-Prostate Specific Antigen Vaccine\nAnti-Tyrosinase Antigen Vaccine\nAntineoplastic Vaccine\nBrachyury Vaccine\nH1299 Cell Lysate Vaccine\nHeat Shock Protein-Peptide Complex Vaccine\nIMA950 Vaccine\nJNJ-64041757 NSCLC\nL-BLP25 Vaccine\nMucin 1 Vaccine\nONY-P1 Vaccine\nPDS0101 Vaccine\nPROSTVAC\nRindopepimut\nTergenpumatucel-L\nTriad of Costimulatory Molecules Vaccine"
  puts ("The Categories Searched Term results are: #{Search_Results_value}")

  if Search_Results_value.eql? Actual_Results
    puts ("The Categories Searched Term: #{value}, Ingredients results: #{Search_Results_value}. Matches the Actual Ingredients Results: #{Actual_Results}.")

  else
    puts (fail("The Categories Searched Term: #{value}, Ingredients results: #{Search_Results_value}. DID NOT Match the Actual Ingredients Results: #{Actual_Results}."))
  end
end


And(/^the user verify the ekg pdf$/) do
  sleep 1

  page_html = @browser.html


  if page_html.include? "Not Found"
    alert_path = ".//*[(@class='error-page')]"
    alert_path_value = get_element_text 'xpath', "#{alert_path}"
    puts (fail("The EKG link to PDF failed with error: #{alert_path_value}."))
  end
end

And(/^the user verify the radiology pdf on the result preview$/) do
  sleep 2

  page_html = @browser.html

  if page_html.include? "Not Found"
    alert_path = ".//*[(@class='error-page')]"
    alert_path_value = get_element_text 'xpath', "#{alert_path}"
    puts (fail("The EKG link to PDF failed with error: #{alert_path_value}."))
  else
    if page_html.include? "This site can’t be reached"
      alert_path1 = ".//*[(@id='main-message')]"
      alert_path_value1 = get_element_text 'xpath', "#{alert_path1}"
      puts (fail("The Radiology link to PDF failed with error: #{alert_path_value1}."))
    else
      if page_html.include? "Patient Reports"
        alert_path2 = ".//*[(@class='reportIntroDetailsPlace')]"
        alert_path_value2 = get_element_text 'xpath', "#{alert_path2}"
        puts ("The PDF link to image open up successfully, the test Patient Radiology image information is: #{alert_path_value2}")
      end
    end
  end
end



And(/^the user verify that "(.*)" is not display$/) do |value|
  sleep 2
  page_html = @browser.html


  if page_html.include? value
    mrn_path = ".//*[(@data-test='manage-subjects-protocol-subjects')]/tbody/tr[1]/td[1]"
    mrn_path_value = get_element_text 'xpath', "#{mrn_path}"
    if mrn_path_value.eql? value
      puts (fail("The Deleted MRN: #{mrn_path_value} is back in the System in #{ENV['TEST_ENV']} environment."))
      end
    else
      if page_html.include? "No subjects found"
        puts ("The Deleted MRN: #{value} IS NOT in the #{ENV['TEST_ENV']} environment, Test PASSED")
      end
    end
  end


And(/^the user verify if the PFT tests data are returned$/) do
  sleep 3
  Zero_Count = "0"
  PFT_Test = ".//*[(@data-test='red-search-node-count')]"
  PFT_Test_Count = get_element_text 'xpath', "#{PFT_Test}"

  if PFT_Test_Count.eql? Zero_Count
    puts (fail("The Search Results for PFT test return: #{PFT_Test_Count} PTF Test on #{ENV['TEST_ENV']} environment."))
  else
    if PFT_Test_Count > Zero_Count
      PFT_Test1 = ".//*[(@class='jstree-node  jstree-open jstree-last')]"
      PFT_Test_Count1 = get_element_text 'xpath', "#{PFT_Test1}"
      puts ("The Search Results for PFT test return is/are: #{PFT_Test_Count1} on #{ENV['TEST_ENV']} environment, Test PASSED")
    end
  end
end

And(/^the user verify if the added list is disply on the lists table$/) do
  sleep 2
  page_html = @browser.html
  Record = "No search term lists found"

  if page_html.include? Record
    alert_path = ".//*[(@class='empty-message')]"
    alert_path_value = get_element_text 'xpath', "#{alert_path}"
    puts (fail("The added list did not display on the list table instead user sees: #{alert_path_value}."))
  end
end


And(/^verify that "(.*)" account load properly$/) do |value|
  sleep 2
  page_html = @browser.html
  load_user_error = "Unable to load user"
  Access_Error = "BTRIS Access Denied"

  if page_html.include? load_user_error
    alert_path = ".//*[(@class='error-page__headline')]"
    alert_path_value = get_element_text 'xpath', "#{alert_path}"
    puts (fail("The user acount: #{value} loaded with error: #{alert_path_value} on the #{ENV['TEST_ENV']} environment ."))
  else
    if page_html.include? Access_Error
      alert_path1 = ".//*[(@class='error-page')]"
      alert_path_value1 = get_element_text 'xpath', "#{alert_path1}"
      puts (fail("The user acount: #{value} loaded with error: #{alert_path_value1} on the #{ENV['TEST_ENV']} environment."))
    else
      puts ("User did not see error: #{load_user_error} OR #{Access_Error}, message on #{ENV['TEST_ENV']} environment, Check PASSED")

    end
  end
end


