require 'spreadsheet'
#Checking to see if a file named enrol_data exists at
book = Spreadsheet::Workbook.new
sheet1 = book.create_worksheet
sheet1.row(0).concat %w{FirstName LastName Phone Email Checkbox Notes}
book.write '/Users/connor/Documents/Documents/Programming/enrol_data.xls'

#Naming variables
welcome = "Welcome to the Self Design Learning Foundation!  We are looking forward to joining you on your educational journey.  To complete the first step of your enrolment process, please answer the following questions:"

f_name_q = "What is your legal first name? "
l_name_q = "What is your legal last name? "
phone_q = "Please enter your home phone number (Ex. XXX-XXX-XXXX): "
email_address_q = "Please enter the email address you would like to be reached at: "

#Prompting user to enter information
puts welcome

puts f_name_q
f_name = gets.chomp.capitalize

puts l_name_q
l_name = gets.chomp.capitalize

puts phone_q
phone_n = gets.chomp

puts email_address_q
email_address = gets.chomp

#Opening the file so it can be written to
target = open("/Users/connor/Documents/Documents/Programming/enrol_data.xls", "w")

# Modify each worksheet (in memory)
workbook.worksheets.each do |sheet|
  sheet.each do |row|
    row[1] = f_name, l_name, phone_n, email_address
  end
end



#closing what's been opened
