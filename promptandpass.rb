# Added colorize gem to change text color

require 'colorize'

user_name = ARGV.first # gets the first arguement
prompt = ">: Enter answer now: "

puts "\nHi #{user_name}."
puts "I'd like to ask you a few questions."
puts "\nDo you like me #{user_name}?"
puts prompt
likes = $stdin.gets.chomp.colorize(:white)

# Used a line break to add seperation
puts "\nWhere do you live #{user_name}?"
puts prompt
lives = $stdin.gets.chomp.colorize(:white)


# a comma for puts is like using it twice
puts "\nWhat kind of computer do you have? ", prompt
computer = $stdin.gets.chomp.colorize(:white)


puts """
Alright, so you said #{likes} about liking me.
You live in #{lives}.  Not sure where that is.
And you have a #{computer} computer. Nice.\n
"""

# used a different format to present the final string.
# In the code below the variables don't return a result but
# returns the variable itself. It also indents in $stdout
# one space.

 #puts %q{
 #Alright, so you said #{likes} about liking me.
 #You live in #{lives}.  Not sure where that is.
 #And you have a #{computer} computer. Nice.
 # }
