# In english, "ternary" is an adjective meaning
# "composed of three items." In a programming language,
# a ternary operator is simply short-hand for an
# if-then-else construct.
# In Ruby, ? and : can be used to mean "then" and "else"
# respectively.

def check_sign(number)
    number > 0 ? "#{number} is postive" : "#{number} is negative"
end

puts check_sign(700)
puts check_sign(-50)
puts check_sign(0)

def check_zero(number)
  if number == 0
    number
    "Zero is neither positive nor negative."
  elsif number > 0
    "#{number} is positive"
  else
    "#{number} is negative"
  end
end

puts check_zero(90)
puts check_zero(-20)
puts check_zero(0)
