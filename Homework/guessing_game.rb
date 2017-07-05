
restart = true
while restart == true
  puts "Welcome to Liam's random number guessing game!!"
  puts "Answers to questions can be accessed at the end of the program."
  puts "what would you like the range of the number to be (from one to...)"
  range = gets.chomp.to_i
  actual = rand(1...range)
  right = false
  count = 0
  count2 = 10
  guess1 = nil
  guess = nil
  giveup = nil
  addword1 = nil
  addword2 = nil
  addword3 = nil
  giveupp = false
  playagain = nil
  isithigh = false
  isitlow = false
  hintmsg = nil
  stopkey = false
  divisiblenum = nil
  while count2 > 1
    i = actual % count2
    if i == 0
      divisblenum = count2
      hintmsg = "Hint: the number is divisible by #{divisiblenum}."
      stopkey = true
    elsif stopkey == false
      hintmsg = "Hint: the number is not divisible by any number between 2 and 10"
    end
    count2 -= 1
  end
  while right == false
    if count != 0 && count % 5 == 0
      puts "give up? (y/n)"
      giveup = gets.chomp
      if giveup == "y" || giveup == "Y"
        giveupp = true
        right = true
      end
    end
    if count != 0 && count % 7 == 0
      puts hintmsg
    end
    if giveupp != true
      puts "What is your #{addword3}guess?"
      guess1 = gets.chomp
      # The cheat is "cheat"
      if guess1 == "cheat"
        guess = actual
      else
        guess = guess1.to_i
      end
      if guess == actual
        puts "Correct!!"
        right = true
      elsif guess > actual
        isithigh = true
        if guess > (actual + (range / 2))
          puts "#{addword1}Way too high, answer is lower."
        elsif guess - actual <= (range / 10.0)
          puts "You're close! But #{addword1}too high."
        else
          puts "Guess is #{addword1}too high"
        end
      else
        isitlow = true
        if guess < (actual - (range / 2))
          puts "#{addword2}Way too low, answer is higher."
        elsif actual - guess <= (range / 10.0)
          puts "You're close! But #{addword2}too low."
        else
          puts "Guess is #{addword2}too low"
        end
      end
    end
    count += 1
    if isithigh == true
      addword1 = "still "
    end
    if isitlow == true
    addword2 = "still "
    end
    addword3 = "next "
  end

  if giveupp == false
    puts "Well done!! It took you #{count} tries to guess the number! play again? (y/n)"
    playagain = gets.chomp
    if (playagain == "y") || (playagain == "Y")
      restart = true
    else
      restart = false
    end
  else
    puts "Better luck next time! play again? (y/n)"
    playagain = gets.chomp
    if (playagain == "y") || (playagain == "Y")
      restart = true
    else
      restart = false
    end
  end
end

puts "Read answers to reflection questions? (y/n)"
questions = gets.chomp
if (questions == "y") || (questions == "Y")
  puts "side note: I would like to know how to get puts to wait for the user to return before going to the next line."
  puts "1. I felt that the pace was very decent. I felt that the daily curriculum was succinct enough to easily reflect on later. I also did a couple days at once just so I could get to the extra priorities, and I'm happy it wasn't impossible to do so."
  puts "2. I am confident that I can get the basics of the language down. There are many common themes between C++ and ruby, and it will thus be easier for me to apply what I know about basic language properties and elements."
  puts "3. I feel least confident about keeping focused, punctual, and organized. I have a tendency to procrastinate, and most of the other members of this program are already professionally developed and have mastered the art of using their time effectively. However, the fact that projects in this class are done in groups will certainly give an extra incentive to complete work in a timely manner, and I hope that I can maybe learn some good habits from classmates. Also, while I can hit the recommended WPM on the typing test (around 25-35) I have been rudely awakened to the fact that I have learned how to type completely wrong. I am going to re-learn the correct way to type in conjunction with my classes so I can type faster and not injure myself."
  puts "4. I am really looking forward to designing gems and interfacing with the web, but quite honestly I'm excited for it all. The website 'Brilliant' is also very nteresting. I accidentally completed the first part of the computer science block on that site instead of the warmup, and I'm convinced further involvement in this site will give me an extra edge for developing whatever this class has in store."
  puts "5. I would love to see what kind of math applies to designing projects, and how to use formulae to make more efficient and intuitive mechanisms."
  puts "6. What confused me most starting out is the actual installations themselves and what each thing is used for, where it resides, etc. The curriculum itself, as well as practice, has made things much easier. However, I would like to know more about shells, daemons, computer processes, etc."
  puts "7. I would like to know how to use input/output steams and exception handling in ruby. Also, I would like to ask whether or not I can use my personal computer, which runs linux mint, for this course. I am really enjoying the interface and the processing speed. Finally, I would like to know some good parking options, the lots are expensive."
  puts "8. The introduction of words to the prompts that will only appear after the first iteration of the while loop went surprisingly smoothly."
  puts "9. getting the computer to interpret the boolean statements in the elsifs was the most difficult part, as well as putting boolean statements in the right format (== or =)."
  puts "10. the 'restart' boolean variable at the beginning was not registering, so I tried the expression a couple times in irb in order to find out what the problem was."
else
  puts "Well that's just rude."
end
