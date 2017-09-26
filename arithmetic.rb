# five squared
puts 5 ** 2
# square root of 5 with floats
puts 5 ** 0.5
# The modulus gives you the remainder after division by a number
# This returns 2
puts 7/3
# This gives you the remainder only
puts 7%3
# As does this
puts 365%7
# abs gives only the absolute value of a number
puts ((5-2)).abs
puts ((2-5)).abs

# Random Numbers
puts "\n Random Numbers"
puts rand
puts rand
puts rand
puts "******"
puts (rand(100))
puts (rand(100))
puts (rand(100))
puts "******"
# All the parens are not needed, I think.
puts (rand(1))
puts (rand(1))
puts (rand(1))
puts rand(1)
puts (rand(9999999999999999999999999999999))

puts ('The weatherman said there is a ' + rand(101).to_s + '% chance of rain.')
puts ('but you can never trust a weatherman.')
puts "*******"
# to get the same return on different runs of the same program you need to set a seed.
srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts "******"
# Using the Math object
puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5))/2)
