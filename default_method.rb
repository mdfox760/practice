# Assign a default value to a method
def greeting(name = "You.")
  puts "Hello, #{name}"
end

puts greeting
puts greeting("Matt.")
puts greeting

# Assign two default values to a method.
def talk_to_me(name = "Rubyist", language = "Ruby")
  puts "Hello, #{name}. You like #{language}."
end

puts talk_to_me # Gives the default
puts talk_to_me("Matt", "Python") # Changes the values
# If you don't give a second arguement, it falls back to the default.
puts talk_to_me("Matt") # Gives the new argument for the first value, then
# returns default value for the second.
puts talk_to_me
