require 'workbook'
# create Excel book and work with it
module Excel
  attr_accessor :book, :sheet, :format
  def create_excel
    @book = Spreadsheet::Workbook.new"#{Dir.pwd}/new.xls"
    @sheet = book.create_worksheet name: 'Browsers'
    @format = Spreadsheet::Format.new size: 12,
                                      horizontal_align: :centre,
                                      border: :thin
  end

  def titles
    title = ["Name", "Time"]
    format = Spreadsheet::Format.new size: 15,
                                     horizontal_align: :centre,
                                     pattern_fg_color: :orange,
                                     pattern: 1,
                                     border: :thin
    row = 1
    col = 1
    title.each do |item|
      write_value(row, col, item, format)
      col += 1
    end
    @book.write "#{Dir.pwd}/new.xls"
  end

  def write_value(row, col, value, form)
    @sheet.row(row)[col] = value
    @sheet.row(row).set_format(col, form)
  end


  def fill_table(hash_res,min,max)
    format_green = Spreadsheet::Format.new size: 12,
                                           horizontal_align: :centre,
                                           border: :thin,
                                           pattern_fg_color: :green,
                                           pattern: 1
    format_red = Spreadsheet::Format.new size: 12,
                                         horizontal_align: :centre,
                                         border: :thin,
                                         pattern_fg_color: :red,
                                         pattern: 1
    row = 2
    col = 1
    hash_res.each do |k, v|
      write_value(row, col, k.to_s, @format)
      col += 1
      case v
      when min then write_value(row, col, v, format_green)
      when max then write_value(row, col, v, format_red)
      else write_value(row, 2, v, @format)
      end
      row += 1
      col -= 1
    end
    @book.write "#{Dir.pwd}/new.xls"
  end
end