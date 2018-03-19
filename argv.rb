# you must enter your arguements at
# runtime in order to see what variable
# has been entered. For instance,
# ruby argv.rb (enter three variables here)

first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

# Added exercise 12. If you add the arguments
# for the first part of the program, the second
# part fails. If you skip the arguments, the second
# part runs fine.

print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp.to_i
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."

print "Give me one more number: "
float = gets.chomp.to_f
number = float.to_f
puts "This is a float #{float}."
