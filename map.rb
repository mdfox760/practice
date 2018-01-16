# map is like a loop with each, except it is mutable
# (it will change an array and keep it)

x = [ "a" "b" "c" ]
y = [ "n" "o" "p" "e"]

each_loop = x.each { |x| x + " Wow" }
y_loop = y.each { |y| y + " Yowza" }

#puts x
#puts y

puts each_loop
puts y_loop

puts x.collect { |x| x + " Wow" }
puts y.collect { |y| y + " Yowza" }

puts x.map
puts x.map.with_index

puts y.map { |y, i| y + " Pow" }
puts y.map.with_index { |y, i| y + " Qowza" }

puts x
puts y
