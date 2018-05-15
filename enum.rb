# block form
enumerator = %w(one two three).each
puts enumerator.class

enumerator.each_with_object("foo") do |item, obj|
  puts "#{obj}: #{item}"
end

# non-block form
enum_with_obj = enumerator.each_with_object("foo")
puts enum_with_obj.class

enum_with_obj.each do |item, obj|
  puts "#{obj}: #{item}"
end

# map a list's elements to strings containing the index
# and the element as a string
puts %w[foo bar baz].map.with_index { |w, i| "#{i};#{w}" }
