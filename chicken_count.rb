puts "I will now count my chickens:"

puts "Hens #{25 + 30 / 6}"
puts "Roosters #{100 - 25 * 3 % 4}"

puts "Now I will count the eggs:"

# This line uses PEMDAS Parentheses Eponents Multiplication Division Addition Subtraction

puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6

puts "Is it true that 3 + 2 < 5 - 7?"

puts 3 + 2 < 5 - 7

puts "What is 3 + 2? #{3 + 2}"
puts "What is 5 - 7? #{5 - 7}"

puts "Oh, that's why it's false."

puts "How about some more."

puts "Is it greater? #{5 > -2}"
puts "Is it greater or equal? #{5 >= -2}"
puts "Is it less or equal? #{5 <= -2}"

=begin
The use of #{3+2} in the code above is how you insert Ruby computations into text
strings. You can put anything that is Ruby code between the { (left-bracket) and }
(right-bracket) characters and ruby will run it and put the result there instead of
those characters. It may not make a lot of sense, but you will use this more and more.
=end
