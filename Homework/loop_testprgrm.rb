require './loop_challenge.rb'
#TEST PROGRAM:
puts "How many people would you like in this group?"
answer1 = gets.chomp.to_i
group = Group.new(answer1)
group.init_group
answer2 = "y"
while answer2 == "y" || answer2 == "Y"
  puts "Would you like to add anyone else? (y/n)"
  answer2 = gets.chomp
  if answer2 == "y" || answer2 == "Y"
    puts "What is their name?"
    answer3 = gets.chomp.to_s
    puts "Would you like to put them in a specific location? (y/n)"
    answer4 = gets.chomp
    if answer4 == "y" || answer4 == "Y"
      puts "In what position? (from 1 to #{group.total_members})"
      answer5 = gets.chomp.to_i
      group.add_to_group(answer5 - 1, answer3)
    else
      group.app_to_group(answer3)
    end
  end
end
puts "Are there any members you want me to greet specifically? If so, type the name below:"
answer6 = gets.chomp.to_s
group.greet_member(answer6)
puts "Now lets greet everybody :)"
group.greet_all_members
