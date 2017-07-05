require './loop_challenge.rb'
puts "How many people are at the table?"
res1 = gets.chomp.to_i
group = Group.new(res1)
group.init_group
puts "Now each person pick a number"
hash_array = {}
for i in 1..res1
  puts "#{group.print_member_inpos(i)}, input your number:"
  ans = gets.chomp
  hash_array.store(group.print_member_inpos(i), ans)
end
total = 0
hash_array.values.each do |num|
  total += num.to_i
end
puts "The total of all your numbers combined is #{total}"
puts "Would you like to know who picked what? (y/n)"
answer = gets.chomp
if answer == 'y' || answer == 'Y'
  continue = true
else
  puts "Suit yourself"
end
while continue == true
  puts "Enter a name:"
  name = gets.chomp
  if hash_array.keys.include?(name)
    puts "#{name} picked #{hash_array[name]}"
  else
    puts "Person not found"
  end
  puts "Search again? (y/n)"
  answer1 = gets.chomp
  if answer1 == 'y' || answer1 == 'Y'
    continue = true
  else
    continue = false
  end
end
