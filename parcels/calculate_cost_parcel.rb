require './lib/parcels'

@list = []

def main_menu
  puts "Press '1' to create a parcel to ship."
  puts "Press '2' to see all of your parcels and cost for each."
  puts "Press '3' to exit."
  main_choice = gets.chomp
  if main_choice == '1'
    add_parcel
  elsif main_choice == '2'
    calculate_total_cost
  elsif main_choice == '3'
    puts "Thank you for choosing us to ship!"
  else
    puts "Sorry, that wasn't a valid option."
    main_menu
  end
end

def add_parcel
  puts "\n"
  puts "Enter the height"
  parcel_height = gets.chomp.to_i
  puts "Enter the width"
  parcel_width = gets.chomp.to_i
  puts "Enter the length"
  parcel_length = gets.chomp.to_i
  puts "Enter the weight"
  parcel_weight = gets.chomp.to_i
  @list << Parcel.new(parcel_weight, parcel_length, parcel_height, parcel_width)
  puts "Parcel added.\n\n"
  main_menu
end

def calculate_total_cost
  puts "\n"
  puts "Here are all of your parcels:"
  @list.each do |parcel|
    puts "package with #{parcel.volume} volume costs $#{parcel.cost_to_ship}"
  end
  puts "\n\n"
  main_menu
end

main_menu
