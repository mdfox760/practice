# If an each statment is not in a block, it will return an Enumerator.

def each_array
  arr = %w[just an array of words]
  puts "This is my array: #{arr}"
  # Muli line
  arr.each do |list|
    puts "In a list: #{list}"
  end
end

puts each_array

# Single line
fruit = ["apple", "pear", "pineapple", "orange"]
fruit.each {|fruit| puts "The current fruit is: #{fruit}."}
