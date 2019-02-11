require 'selenium-webdriver'

Selenium::WebDriver::Chrome.driver_path = 'C:/WebDrivers/chromedriver.exe'
@driver = Selenium::WebDriver.for :chrome

def open(url)
  start = Time.now
  @driver.get(url)
  print 'Time for opening: '
  puts Time.now - start
end

def close
  start = Time.now
  @driver.quit
  print 'Time for closing: '
  puts Time.now - start
end

open 'https://www.google.com'
close

