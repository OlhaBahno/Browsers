require 'selenium-webdriver'
require 'rspec'
require './Writer.rb'
require './Driver.rb'

describe Driver do

  include Driver
  include LogWriter

  it 'should write time for opening:' do
    start
    time = Time.now
    open_site
    write_to_log "Time for opening: #{Time.now - time}"
    expect(Time.now - time).to be < 1
  end

end