Array.included_modules
puts "Array.included_modules"
puts Array.included_modules

String.included_modules
puts "String.included_modules"
puts String.included_modules

class Colors
  include Enumerable
end

c = Colors.new

puts Enumerable.instance_methods.sort
