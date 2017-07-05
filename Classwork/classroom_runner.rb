require './classroom.rb'
puts "Enter width of new classroom"
width = gets.chomp.to_i
classroom_a = Classroom.new(width)
classroom_b = Classroom.new(27)
