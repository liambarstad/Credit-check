def double(num)
  num * 2
end
def convert_to_celcius(temp)
  ((temp - 32) * (5.0 / 9.0)).round(2)
end
def print_converted(temp)
  puts "#{temp} degrees F is #{convert_to_celcius(temp)} degrees C"
end
def doubleh(num)
  puts "#{num} doubled is #{double(num)}"
end

def convert(*temp)
  temp.each do |val|
    print_converted(val)
  end
end

convert(200, 129, 34, 50)
convert(34, 50)
convert(200, 129)
