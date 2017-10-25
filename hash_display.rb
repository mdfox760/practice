# A way to get a hash to display nicely formatted.

hash = Hash.new
%w(ant bear cat dog elephant).each_with_index {|item, index| hash[item] = index}
hash
hash.each {|item, index| puts item + ": " + index.to_s}
puts "****"

# Another example
h = Hash.new
%w(Jasmin Kyle Lydia Matt).each_with_index {|key, value| h[key] = value}
h.each {|key, value| puts key + ": " + value.to_s}
