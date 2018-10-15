require "selenium-webdriver"

chrome_driver = Selenium::WebDriver.for(:chrome) # this will spin up an automated browser

chrome_driver.get("http://toolsqa.com/automation-practice-form")


chrome_driver.find_element(:name, "firstname").send_keys("Test")
#
