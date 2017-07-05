require 'date_night.rb'
schmeckflix = Registry.new
puts "Welcome to Shmeckflix! \n Would you like to make a new account? (y/n)"
neugh = gets.chomp
if neugh == 'y' || neugh == 'Y'
  puts "Username:"
  new_user = gets.chomp
  puts "Password:"
  new_password = gets.chomp
  BinaryTreeAccount(new_user, new_password)
else
  puts "Please sign into your account \n Username:"
  username = gets.chomp
  puts "Password:"
  password = gets.chomp
