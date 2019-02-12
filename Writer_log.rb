module Writer
  def write_to_log(result)
    File.open('log.txt', 'a') { |file| file.write result }
  end
end