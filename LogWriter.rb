module LogWriter

  def write_to_log(result)
    File.open('log.txt', 'w'){ |file| file.write result }
  end
end