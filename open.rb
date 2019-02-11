require 'selenium-webdriver'
require './Driver.rb'
require './LogWriter.rb'


include Driver
include LogWriter

start
time = Time.now
open_site
write_to_log "Time for opening: #{Time.now - time}"



