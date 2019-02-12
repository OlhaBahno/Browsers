module Driver
  attr_accessor :driver
  def launch(browser = 'Chrome')
    if browser == 'Chrome'
      Selenium::WebDriver::Chrome.driver_path = 'C:/WebDrivers/chromedriver.exe'
      @driver = Selenium::WebDriver.for :chrome
    else
      Selenium::WebDriver::Firefox.driver_path = 'C:/WebDrivers/geckodriver.exe'
      @driver = Selenium::WebDriver.for :firefox
    end
  end

  def open_site
    @driver.get 'https://www.google.com'
  end

  def close_site
    @driver.quit
  end
end