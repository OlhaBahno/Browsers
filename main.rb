require 'selenium-webdriver'
require './Driver.rb'
require './Writer.rb'
require 'workbook'

include Driver
include Writer

@hash = {}

def start_time(str)
  time = Time.now
  open_site
  close_site
  write_to_log "Time for #{str}: #{Time.now - time}\n"
  @hash[str] = Time.now - time
end

launch('Firefox')
start_time('Firefox')

launch('Chrome')
start_time('Chrome')

write_to_excel(@hash)













