# welcome message and user input (choosing amount of menu items)
puts "Welcome to Lauren's Restaurant!"
puts "How many menu items would you like to see? (10 max)"
num = gets.chomp.to_i

puts "Okay, if you'd like to see #{num} menu options, \nyou unfortunately need to come up with those options!"

adj = []
style = []
protein = []

# Ask user to provide menu items and create array
puts "\nPlease provide #{num} adjectives: "
num.times do
adj << gets.chomp
end

puts "Now, provide #{num} cooking styles: "
num.times do
style << gets.chomp
end

puts "Lastly, provide #{num} foods: "
num.times do
protein << gets.chomp
end

puts "Thank you for your input!"

# to avoid duplicates, create a NEW array from OG array!
adj_arr = adj.shuffle
style_arr = style.shuffle
protein_arr = protein.shuffle

# output message
# randomly pulls one item from each array
puts "\nBelow are your menu options:"
num.times do |i|
  puts "#{i + 1}: #{adj_arr[i]} #{style_arr[i]} #{protein_arr[i]}"
  i += 1
end

# attempt to create an array within array
# num.times do |i|
# arr_array = [adj_arr, style_arr, protein_arr]
# puts arr_array[][i][i]
# i += 1
# end
