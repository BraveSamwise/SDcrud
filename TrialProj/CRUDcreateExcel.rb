#calling config file spreadsheet
require 'spreadsheet'
#Checking to see if a file named enrol_data exists at
book = Spreadsheet::Workbook.new
sheet1 = book.create_worksheet
sheet1.row(0).concat %w{FirstName LastName Phone Email Checkbox Notes}
book.write '/Users/connor/Documents/Documents/Programming/enrol_data.xls'
