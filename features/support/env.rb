require "appium_lib"

opts = {
  caps: {
    platformName: "Android",
    deviceName: "Dog",
    automationName: "UiAutomator2",
    app: "/Users/valtsdrozdovs/Desktop/4F.apk",
    udid: "R5CR60WHQZH"
  },
  appium_lib: {
    server_url: "http://localhost:9090/wd/hub"
  }
}

$driver = Appium::Driver.new(opts,true)

#Happens before a cucumber test case
Before do
  $driver.start_driver
  @screens = Screens.new
end

After do |scenario|
  add_screenshot(scenario.name) if scenario.failed?
end

def add_screenshot(scenario_name)
  screenshot_dir = "reports/#{scenario_name}.png"
  $driver.screenshot(screenshot_dir)
  attach(screenshot_dir, 'image/png')
end
