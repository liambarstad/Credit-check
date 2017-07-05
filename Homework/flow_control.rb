def isevenorodd(str)
  count = str.length
  if count % 2 = 0
    puts "Your message is even"
  else
    puts "Your message is odd"
  end
end

def callback
  puts "Type your message:"
  input = gets.chomp
  puts input
  isevenorodd(input)
end

callback
