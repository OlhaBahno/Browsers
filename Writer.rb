require 'workbook'
module Writer

  def write_to_log(result)
    File.open('log.txt', 'a') { |file| file.write result }
  end

  def write_to_excel(hash_res)
    book = Spreadsheet::Workbook.new'C:\Users\obahn\RubymineProjects\browsers\new.xls'
    format = Spreadsheet::Format.new horizontal_align: :centre
    sheet = book.create_worksheet name: 'New worksheet'
    sheet.row(0).concat %w[Name Time]
    hash_res.each do |k, v|
      sheet.row(1).push k
      sheet.row(2).push v
    end
    (0..sheet.rows.count - 1).each { |i| sheet.row(i).default_format = format }
    book.write 'new.xls'
  end
end