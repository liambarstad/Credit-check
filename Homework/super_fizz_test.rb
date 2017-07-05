require './super_fizz.rb'
puts "Welcome to the SuperFizzBuzz calculator!"
repeat = true
while repeat == true
  puts "Would you like to SFB a number (press 1) or a range of numbers (press 2)?"
  ans = gets.chomp.to_i
  if ans == 1
    puts "What number would you like to SFB?"
    ans1 = gets.chomp.to_i
    SFB(ans1)
  elsif ans == 2
    puts "What number would you like to start with?"
    ran1 = gets.chomp.to_i
    puts "What number would you like to iterate until?"
    ran2 = gets.chomp.to_i
    SuFiBu(ran1, ran2)
  else
    puts "Invalid input"
  end
  puts "Convert again? (y/n)"
  ans2 = gets.chomp
  if ans2 != 'y' && ans2 != 'Y'
    repeat = false
  end
end
