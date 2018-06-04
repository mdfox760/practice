order = { :size => "Medium" }

flavor = { :flavor => "Cream and sugar" }
black = { :flavor => "Black"}
sweet = { :flavor => "Sweet"}
light = { :flavor => "Cream"}

def make_small_coffee
  puts "making small coffee"
end

def make_medium_coffee
  puts "making medium coffee"
end

def make_large_coffee
  puts "making large coffee"
end

def flavor_coffee
  puts "light and sweet"
end

def black_coffee
  puts "Black"
end

def light_coffee
  puts "Just cream"
end

def sweet_coffee
  puts "Sweet, please."
end

if order[:size] == "small"
  make_small_coffee;
elsif order[:size] == "medium"
  make_medium_coffee;
elsif order[:size] == "large"
  make_large_coffee;
end

if flavor[:flavor] == "cream and sugar"
  flavor_coffee
elsif flavor[:flavor] == "just cream"
  light_coffee
elsif flavor[:flavor] == "Sugar only"
  sweet_coffee
else
  black_coffee
end

puts make_small_coffee
puts make_medium_coffee
puts make_large_coffee

puts flavor_coffee
puts light_coffee
puts sweet_coffee
