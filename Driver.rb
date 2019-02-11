module Driver
  attr_accessor :driver

  def start(url = 'C:/WebDrivers/chromedriver.exe', driver = 'Selenium::WebDriver.for :chrome')
    if driver.include?'chrome'
      Selenium::WebDriver::Chrome.driver_path = url
    else
      Selenium::WebDriver::Firefox.driver_path = url
    end
    @driver = eval(driver)
  end

  def open_site
    @driver.get 'https://www.google.com'
  end

  def close_site
    @driver.quit
  end
end