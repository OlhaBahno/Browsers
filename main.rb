require './writer_excel.rb'
require './work_hash.rb'
require './driver.rb'

include Excel
include WorkHash
include Driver

=begin
@hash = {}

launch('Firefox')
@hash['Firefox'] = start_time('Firefox')

launch('Chrome')
@hash['Chrome'] = start_time('Chrome')

create_excel
titles
fill_table(@hash, @hash.values.min, @hash.values.max)
=end

puts Dir.pwd
create_excel
titles













