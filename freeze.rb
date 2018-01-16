# Freezing objects - You can even freeze a class.
# Examples of freezing variables.
str = 'A simple string.'
str.freeze
begin
  str << "An attempt to modify."
rescue => err
  puts "#{err.class} #{err}"
end
# The output is RuntimeError can't modify frozen String
puts "Is str frozen?"
puts str.frozen?
# string can become a new object and be assigned to str
str += ' Added this later.'
puts str
puts "****"
# An example of using freeze.
a = b = "Original string."
b.freeze
puts "Is a frozen?"
puts a.frozen?
puts "Is b frozen?"
puts b.frozen?
# variable is can be changed as a new object.
a = "New string."
puts a
puts b
puts "Is a frozen?"
puts a.frozen?
puts "Is b frozen?"
puts b.frozen?
