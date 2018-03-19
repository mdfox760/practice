puts "Find the base of an exponent for doubling"
puts "(the log2) for the variable you enter."

print "Enter an amount: "
number = $stdin.gets.chomp.to_i
puts "You entered #{number}"
logger = Math.log2(number)
puts "The log2 of #{number} is: #{logger}"

puts ""

puts "Find the exponent for a number"
print "Enter an amount: "
exp = $stdin.gets.chomp.to_i
expo = 2**exp
puts "The exponent of #{exp} is: #{expo}"
