require './writer_excel.rb'
require './work_hash.rb'
require './driver.rb'

include Excel
include WorkHash
include Driver


@hash_1 = { "a": 19, "b": 2, "c": 34, "d": 12, "e": 1, "f": 10 }
@title_1 = %w[Letter Digit]
@hash = {}
@title = %w[Name Time]

launch('Firefox')
@hash['Firefox'] = start_time('Firefox')

launch('Chrome')
@hash['Chrome'] = start_time('Chrome')

create_excel
titles(@title,1,1)
fill_table(@hash, @hash.values.min, @hash.values.max, 2, 1)

titles(@title_1, 1, 4)
fill_table(@hash_1, @hash_1.values.min, @hash_1.values.max, 2, 4)















