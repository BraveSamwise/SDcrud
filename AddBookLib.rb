library = {
  Example_Book: 5,
  Example_Book2: 8,
}
answer = "yes"
while answer == "yes"
puts "Would you like to add another book to your library?  Please answer yes or no."
answer = gets.chomp

  case answer
    when "yes"
      puts "What book would you like to add?"
      book = gets.chomp
      library[book]
      puts "What rating from 1 to 10 would you give this book?"
      rating = gets.chomp.to_i
      library[book] = rating
      puts "#{book} has been added to your library with a rating of #{rating}."
    when "no"
      puts "Okey dokey smokey!"
    end
end

puts "Here's what's in your library now: #{library}"
