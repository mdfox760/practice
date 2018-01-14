# Yield and blocks
# Simple loops
[1, 2, 3].each do |n|
  puts "Number #{n}"
end

[4, 5, 6].each {|n| puts "Number #{n}"}

# Yield gets inserted into the block. If you don't call yield the block won't
# get executed. If you do call yield the block parameter is mandatory.
def my_method
  puts "Reached the top"
  yield
  puts "Reached the bottom"
end

my_method do
  puts "Reached yield"
end

# Yield takes parameters
def new_method
  yield("Matt", 51)
end

new_method do |name, age|
  puts "#{name} is #{age} years old"
end

# &block passes a reference instead of a local variable
def hello(&block)
  puts block
  block.call
end

hello { puts "Hello!" }

def number
  value = yield
  puts "Value is: #{value}"
end

number do
  2
end

puts "*****"
# Doesn't return anything. 
def each_item(&block)
  @items.each(&block)
end

# Iterators
# Yield can be called as many times as you want.
# This is a method similiar to the map method.

def my_map(array)
    new_array = []

    for element in array
      new_array.push yield element
    end

    new_array
  end

my_map([1, 2, 3]) do |number|
  puts "#{number * 2}"
end
