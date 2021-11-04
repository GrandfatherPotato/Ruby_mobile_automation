require "appium_lib"

opts = { caps: {
  platformName: "Android",
  deviceName: "Samsungs",
  automationName: "UiAutomator2",
  udid: "RF8N205TNHZ"
},
         appium_lib: {
         }
}

$driver = Appium::Driver.new(opts,true)

#Happens before a cucumber test case
Before do
  $driver.start_driver
  @screens = Screens.new
end


After do |scenario|
  if scenario.failed?
    add_screenshot(scenario.name)
  end
end

def add_screenshot(scenario_name)
  screenshot_dir = "reports/#{scenario_name}.png"
  $driver.screenshot(screenshot_dir)
  attach(screenshot_dir,'image/png')
end