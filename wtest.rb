

puts "What would you like to add to your To-Do list?"
addto = gets.chomp

while addto != "exit"

File.open("test_list.txt", "a") do |line|
    line.puts "\r" + "#{addto}"

puts "Would you like to continue adding items to your To-Do list? (yes) (no)"
  continue = gets.chomp

  if continue == "yes"
    puts "What would you like to add to your To-Do list?"
    addto = gets.chomp
  elsif continue == "no"
    puts "See you next time.  Good luck with your list!"
    addto = "exit"
  elsif
    puts "Error.  Please answer either (yes) or (no)"
    puts "Would you like to continue adding items to your To-Do list? (yes) (no)"
    continue = gets.chomp
  end
end
end
