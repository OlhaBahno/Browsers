require './Driver.rb'
require './Writer_log.rb'

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

  def find_min(hash_res)
    min = hash_res.values[0]
    hash_res.each do |k,v|
      if v < min
        min = v
      end
    end
    min
  end

  def find_max(hash_res)
    max = hash_res.values[0]
    hash_res.each do |k,v|
      if v > max
        max = v
      end
    end
    max
  end
end