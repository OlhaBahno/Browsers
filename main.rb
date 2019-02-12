require 'selenium-webdriver'
require './Driver.rb'
require './Writer.rb'
require 'workbook'

include Driver
include Writer

@hash = {}

def launch(str)
  time = Time.now
  open_site
  close_site
  write_to_log "Time for #{str}: #{Time.now - time}\n"
  @hash[str] = Time.now - time
end

start('C:/WebDrivers/geckodriver.exe', 'Selenium::WebDriver.for :firefox')
launch('Firefox')

start
launch('Chrome')

write_to_excel(@hash)













