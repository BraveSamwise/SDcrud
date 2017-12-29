
puts "Welcome to the Self Design Learning Foundation!  We are looking forward to joining you on your educational journey.  To complete the first step of your enrolment process, please answer the following questions:"

puts "What is your legal first name? "
f_name = gets.chomp.capitalize

puts "What is your legal last name? "
l_name = gets.chomp.capitalize

puts "Please enter your home phone number (Ex. XXX-XXX-XXXX): "
phone = gets.chomp

puts "Please enter the email address you would like to be reached at: "
email = gets.chomp

answers = "#{f_name} #{l_name}\t#{phone}\t#{email}"

if File.exist?("enrol_data.txt") == false
  File.new("enrol_data.txt", "w+")
  File.open("enrol_data.txt", "a") do |line|
    line.puts "Name\tPhone\tEmail\tReview\tNotes"
    line.puts "#{answers}" + "\tReviewed: no\tNotes: "
  end
else File.exist?("enrol_data.txt") == true
  File.open("enrol_data.txt", "a") do |line|
  line.puts "#{answers}" + "\tReviewed: no\tNotes: "
  end
end

puts "Thank you for submitting your answers.  If you have any further questions, please contact us at filleremail@blank.ca and we will be happy to assist you."
