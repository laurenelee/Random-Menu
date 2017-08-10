# Come up with the three arrays of ten items each.
# Each list should be a different type of food
#  or descriptor for that food.

adj = %W[smelly creamy sticky stinky slimy strong stringy gooey pungent watery]
style = ["deep-fried", "steamed", "baked", "boiled", "caramelized", "charbroiled", "grilled", "marinated", "microwaved", "pan fried"]
protein = %W[steak chicken tacos kabobs beans tofu pork sandwiches bacon turkey]

puts "Welcome to Lauren's Restaurant!"
puts "How many menu items would you like to see? (10 max)"
num = gets.chomp.to_i

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

# ------ other things I tried:

# First try:
# this works to meet primary requirements
# puts "\nBelow are your menu options:"
# 10.times do |i|
#   puts "#{i}: #{adj.sample} #{style.sample} #{protein.sample}"
#   i += 1
# end

# long winded way of eliminating duplicates
# for each (adj, style, and protein)
# adj_arr = []
# until adj_arr.length == num do
#   rand = adj.sample
#  adj_arr.push(rand) unless adj_arr.include?(rand)
# end
