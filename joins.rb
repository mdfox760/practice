# The code below prints horizontally.
foods = [ "artichoke", "lettuce", "gin", "whiskey", "pinapple" ]
arrOfarr = [ ["house", "car", "banana", "tree"], [ "bike", "skateboard", "skates"] ]
puts "This is the foods array:  #{foods}"
puts "This is foods.to_s array: #{foods.to_s}"
puts "This is foods.join(', '): #{foods.join(', ')}"
puts foods.join(' :) ') + ' 8)'

# A bunch of empty arrays.
20.times do
  puts []
end

# The code below prints vetically, line by line.
puts ( "This is an array of arrays: " ), arrOfarr
puts ( "This is the second array in arrOfarr: "), arrOfarr[1]
puts ( "This is a string of the arrays: "), arrOfarr.to_s
puts ( "This is the first array in the string: "), arrOfarr[0].to_s
puts ( "This is the second array in a string: "), arrOfarr[1].to_s
puts ( "This is using 'join' on the array: "), arrOfarr.join(', ')

# Creates empty array, adds items to the array. Prints info in the array.
favs = []
favs.push 'raindrops on roses'
favs.push 'poker'
favs.push('catching tuna')
puts "The array is: #{favs}"
puts "The last item in the favs array is: #{favs.last}"
puts "The number of items in the array is: #{favs.length}"

# Knocks off the last item in the array.
favs.pop

# Shows the last change.
puts "These are the items in the array now: #{favs}"

# Shows the smaller size of the array.
puts "This is the size of the array now: #{favs.length}"
