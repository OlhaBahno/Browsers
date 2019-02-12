require './Writer_excel.rb'
require './Work_hash.rb'
require './Driver.rb'

include Excel
include WorkHash
include Driver

@hash = {}

launch('Firefox')
@hash['Firefox'] = start_time('Firefox')

launch('Chrome')
@hash['Chrome'] = start_time('Chrome')

createExcel
titles
fill_table(@hash, find_min(@hash), find_max(@hash))















