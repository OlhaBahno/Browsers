require './writer_excel.rb'
require './work_hash.rb'
require './driver.rb'

include Excel
include WorkHash
include Driver


# @hash = { "a": 19, "b": 2, "c": 34, "d": 12, "e": 1, "f": 10 }

@hash = {}

launch('Firefox')
@hash['Firefox'] = start_time('Firefox')

launch('Chrome')
@hash['Chrome'] = start_time('Chrome')

create_excel
titles
fill_table(@hash, @hash.values.min, @hash.values.max)















