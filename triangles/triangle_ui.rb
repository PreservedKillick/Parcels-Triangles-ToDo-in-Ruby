require './lib/triangles'

@list = []

def main_menu
  puts "\nPress 'e' to enter your triangle."
  puts "Press 'l' to list all your triangles."
  puts "Press 'x' to exit"
  main_choice = gets.chomp
  if main_choice == 'e'
    users_triangle
  elsif main_choice == 'l'
    list_triangles
  elsif main_choice == 'x'
    system "clear"
    puts "Bye bye triangles\n\n\e[0m"
    exit
  else
    puts "Sorry, that was not a valid option."
    main_menu
  end
end

def users_triangle
  system "clear"
  puts "Please enter the measurement for side 1 of your triangle."
  user_side1 = gets.chomp.to_i
  puts "Please enter the measurement for side 2 of your triangle."
  user_side2 = gets.chomp.to_i
  puts "Please enter the measurement for side 3 of your triangle."
  user_side3 = gets.chomp.to_i
  triangle = Triangle.new(user_side1, user_side2, user_side3)
  if triangle.triangle? == true
    @list << triangle
    puts "\nYou have " + triangle.type_of_triangle + " \e[5;96mCongratulations!\e[0m\e[96m"
  else
    puts "\n\e[5;91m" + triangle.type_of_triangle + "\e[0m\e[96m"
  end
  main_menu
end

def list_triangles
  system "clear"
  puts "Here are all of your triangles:"
  @list.each do |triangle|
    puts "#{triangle.side1}, #{triangle.side2}, #{triangle.side3} is " + triangle.type_of_triangle
  end
  main_menu
end
system "clear"
puts "\e[96mTriangle fun.  Find out what kind of triangle you have."
main_menu

