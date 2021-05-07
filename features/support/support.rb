Before do |scenario|
  # puts ("begin #{scenario.feature.name}")
  puts ("Started executing Scenario : #{scenario.name}")
  if scenario.failed?
    # scenario_id=scenario.name.split(" ")
    # result_dir= "C:/test_results/"+"#{scenario_id[0]}"+"#{get_timestamp.to_s}"+".png"
    # @driver.save_screenshot(result_dir)
    #Do something if scenario fails.
    if Configuration.host.downcase.include? 'N/A'
      puts ("Test is not running in mobile emulator, Executing Environment is : #{ENV['TEST_ENV']}")
      step "the user logged out of the system"
      @browser.close    else
      if ENV['TEST_ENV'].downcase.eql? 'test_mobile'
        puts ("Executing Environment is : #{ENV['TEST_ENV']}")
        step "the user clicks on \"nav bar in mobile\" element on \"Btris/Portal\" page"
        step "the user logged out of the system"
        @browser.close
      else
        if ENV['TEST_ENV'].downcase.eql? 'prod_mobile'
          puts ("Executing Environment is : #{ENV['TEST_ENV']}")
          step "the user focus and clicks on \"nav bar in mobile\" element on \"Btris/Portal\" page"
          step "the user logged out of the system"
          @browser.close
        else
          puts ("Test is not running in mobile emulator, Executing Environment is : #{ENV['TEST_ENV']}")
          step "the user logged out of the system"
          @browser.close
        end
    end
end
  end
  # @driver.action.send_keys(:N)
  # The +scenario+ argument is optional, but if you use it, you can get the title,
  # description, or name (title + description) of the scenario that is about to be
  # executed.

  # @@world = self
end

After do |scenario|
  # Do something after each scenario.
  # The +scenario+ argument is optional, but
  # if you use it, you can inspect status with
  # the #failed?, #passed? and #exception methods.
  # puts ("End of #{scenario.feature.name}")
  puts ("Finished executing Scenario : #{scenario.name}")
  # raise @err if @err != nil
  if scenario.failed?
    # scenario_id=scenario.name.split(" ")
    # result_dir= "C:/test_results/"+"#{scenario_id[0]}"+"#{get_timestamp.to_s}"+".png"
    # @driver.save_screenshot(result_dir)
    #Do something if scenario fails.
    if Configuration.host.downcase.include? 'in-progress'
      step "the user logged out of the system"
    else
      puts 'test will continue if there are more scenarios to execute'
      #@browser.close
    end
  end
end