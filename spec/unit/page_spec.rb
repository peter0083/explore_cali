# using Selenium to test 
# Selenium is a web driver that spins up a real web browser like Chrome
# and can get results from computed CSS
require 'capybara'
require 'capybara/dsl'
require 'selenium-webdriver'

include Capybara::DSL 
Capybara.app_host = "http://website"
Capybara.run_server = false
# config capybara so that it runs selenium not rack_test
Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(
        app,
        browser: :remote
# tell selenium to NOT look for browser inside the container
# get chrome from the selenium hub
        url => "http://#{ENV['SELENIUN_HOST']}:#{ENV['SELENIUM_PORT']}/wd/hub",
        desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
            "chromeOptions" => { "args" => [
                    '--no-default-browser-check'
                ]
            }
        )
    )
end
Capybara.default_driver = :selenium

describe "Example page render unit tests" do
    it "should show the Explore California logo" do
        visit('/')
        expect(page.has_selector? 'a.logo').to be true 
    end 
end
