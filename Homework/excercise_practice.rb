puts "Turing"

answer_1 = "Turing"[0]
puts answer_1

answer_2 = "Turing".length
puts answer_2

answer_3 = "Turing".upcase
puts answer_3

answer_4 = "Turing".delete("n")
puts answer_4

turing = "Turing"
puts turing

puts "What is your first name?"

first_name = gets
puts first_name

puts "What is your last name?"

last_name = gets.chomp
puts last_name

puts "What is your favorite number?"

fav_num = gets
puts fav_num

puts fav_num.to_i
puts "Answers to practice questions? (y/n)"
answer = gets.chomp
if answer == "y" or "Y"
  puts "gets prompts ruby to get input from the user"
  puts "chomp ends the user input when the user ends the line. However, in this practice
  program, the input seems to behave the same regardless."
  puts "fav_num.to_i converts the string variable fav_num to an integer value."
else
  puts "fine, be that way"
end
animals = ["dog", "cat", "penguin", "armadillo"]

puts animals
puts "More answers?"
answer = gets.chomp
if answer == "y" or "Y"
  puts "animals.length returns 4"
  puts "animals[0] returns dog"
  puts "animals.empty? returns false"
  puts "animals.push('dolphin') would add a dolphin to the array, or you could type
  animals << 'dolphin'."
  puts "animals.pop() would remove the last element of the array and output it"
else
  puts "alright, jeez"
end
