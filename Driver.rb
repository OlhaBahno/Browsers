module Driver
  attr_accessor :driver

  def start(url = 'C:/WebDrivers/chromedriver.exe', driver = 'Selenium::WebDriver.for :chrome')
    Selenium::WebDriver::Chrome.driver_path = url
    @driver = eval(driver)
  end

  def open_site
    @driver.get 'https://www.google.com'
  end

  def close_site
    @driver.quit
  end
end