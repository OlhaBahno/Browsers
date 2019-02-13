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
    format = Spreadsheet::Format.new size: 15,
                                     horizontal_align: :centre,
                                     pattern_fg_color: :orange,
                                     pattern: 1,
                                     border: :thin
    write_value(1, 1, 'Name', format)
    write_value(1, 2, 'Time', format)
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
    hash_res.each do |k, v|
      write_value(row, 1, k, @format)
      case v
      when min
        write_value(row, 2, v, format_green)
      when max
        write_value(row, 2, v, format_red)
      else
        write_value(row, 2, v, @format)
      end
      row += 1
    end
    @book.write "#{Dir.pwd}/new.xls"
  end
end