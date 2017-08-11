# welcome message and user input (choosing amount of menu items)
puts "Welcome to Lauren's Restaurant!"
puts "How many menu items would you like to see? (10 max)"
num = gets.chomp.to_i

puts "Okay, if you'd like to see #{num} menu options, \nyou unfortunately need to come up with those options!"

adj = []
style = []
protein = []
array = [adj, style, protein]

prompts = ["Now, provide #{num} adjectives: ",
  "Now, provide #{num} cooking styles: ",
  "Please provide #{num} foods: "]

  3.times do |i|
    puts "#{prompts[i-1]}"
    num.times do
      array[i] << gets.chomp
    end
  end

  puts "Below is the menu you created!"
  adj_sample = array[2].sample(num)
  style_sample = array[1].sample(num)
  protein_sample = array[0].sample(num)

  num.times do |i|
    puts "#{i + 1}: #{adj_sample[i]} #{style_sample[i]} #{protein_sample[i]}"
    i += 1
  end
