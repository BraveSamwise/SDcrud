library = {
  Example_Book: 1,
  Example_Book2: 2,
}

puts "What would you like to do?  Options: (add) (list) (update) (delete) (exit)"
  choice = gets.chomp

  while choice != "exit"

  case choice
  when  "add"
      puts "What is the title of the book you would like to add?"
      title = gets.chomp
      if library[title.to_sym] == nil
        then
        library[title]
        puts "What rating from 1-10 would you give that book?"
        rating = gets.chomp.to_i
        library[title.to_sym] = rating
        puts "Thank you.  #{title} has been added to your library with a rating of #{rating}."
      else puts "That book is already in your library!"
      end

    when "list"
      library.each do |title, rating|
        puts "#{title}: #{rating}"
      end

    when "update"
      puts "What is the title of the book you would like to update?  Please replace spaces in title with underscores. (Ex. The_Lord_of_the_Rings)."
      title = gets.chomp
      if library[title.to_sym] == nil
        puts "Error!  Book not found.  Please try again."
      else #puts "#{title} has a current rating of #{library[title]
        puts "What rating from 1-10 would you give that book?"
        rating = gets.chomp
        library[title.to_sym] = rating.to_i
        puts "Your rating for #{title} has been updated to #{rating}!"
      end

    when "delete"
      puts "What is the title of the book you would like to remove?"
      title = gets.chomp.to_sym
      if library[title.to_sym] == nil
        puts "Error!  Book not found.  Please try again."
      else library.delete(title)
      end

    else
      puts "Error! That is not a valid choice.  Please choose from (add) (list) (update) (delete)."
    end

    puts "Would you like to do anything else? (yes) (no)"
    continue = gets.chomp

    case continue
      when "yes"
        puts "What would you like to do?  Options: (add) (list) (update) (delete) (exit)"
          choice = gets.chomp
      when "no"
        choice = "exit"
        puts "Thank you, and see you next time!"
    end







  end
