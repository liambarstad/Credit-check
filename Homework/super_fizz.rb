def SFB(num)
  output = String.new
  printnum = true
  if num % 7 == 0
    output += "Super"
    printnum = false
  end
  if num % 3 == 0
    output += "Fizz"
    printnum = false
  end
  if num % 5 == 0
    output += "Buzz"
    printnum = false
  end
  if printnum == true
    puts "#{num}"
  else
    puts output
  end
end
#SuperFizzBuzz for a single number
def SuFiBu(first, last)
  for i in first..last
    output = String.new
    printnum = true
    if i % 7 == 0
      output += "Super"
      printnum = false
    end
    if i % 3 == 0
      output += "Fizz"
      printnum = false
    end
    if i % 5 == 0
      output += "Buzz"
      printnum = false
    end
    if printnum == true
      puts "#{i}"
    else
      puts output
    end
    i += 1
  end
end
#SuperFizzBuzz for a range of numbers
