color_array = []
color_hash = {}

color_array[0] = 'red'
color_array[1] = 'green'
color_array[2] = 'blue'
color_hash['strings'] = 'red'
color_hash['numbers'] = 'green'
color_hash['keywords'] = 'blue'

color_array.each do |color|
  puts color
end
color_hash.each do |codeType, color|
  puts codeType + ': ' + color
end

new_array = []
new_array.push [ "Time", "Day", "Week", "Month", "Year" ]
puts new_array
puts
new_array.push "Life"
puts new_array

weird_hash = Hash.new
weird_hash[12] = 'monkeys'
weird_hash[[]] = 'emptiness'
weird_hash[Time.new] = 'no time like the present.'
puts weird_hash
# A block to run weird_hash in verticle display
weird_hash.each do |weird|
  puts weird
end
