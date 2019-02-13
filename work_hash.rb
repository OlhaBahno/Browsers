require './driver.rb'
require './writer_log.rb'

# working with hash
module WorkHash
  include Driver
  include Writer
  def start_time(str)
    time = Time.now
    open_site
    close_site
    write_to_log "Time for #{str}: #{Time.now - time}\n"
    Time.now - time
  end

=begin
  def find_min(hash_res)
    min = hash_res.values[0]
    hash_res.each do |k,v|
      min = v if v < min
    end
    min
  end

  def find_max(hash_res)
    max = hash_res.values[0]
    hash_res.each do |k,v|
      max = v if v > max
    end
    max
  end
=end
end