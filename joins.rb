foods = [ "artichoke", "lettuce", "gin", "whiskey", "pinapple" ]
arrOfarr = [ ["house", "car", "banana", "tree"], [ "bike", "skateboard", "skates"] ]
puts foods
puts
puts foods.to_s
puts
puts foods.join(', ')
puts
puts foods.join(' :) ') + ' 8)'

200.times do
  puts []
end

puts ( "This is an array of arrays: " ), arrOfarr
puts ( "This is the first array: "), arrOfarr[1]
puts ( "This is a string of the arrays: "), arrOfarr.to_s
puts ( "This is the first array in the string: "), arrOfarr[0].to_s
puts ( "This is the second array in a string: "), arrOfarr[1].to_s
puts ( "This is using 'join' on the array: "), arrOfarr.join(', ')

favs = []
favs.push 'raindrops on roses'
favs.push 'poker'
favs.push('catching tuna')
puts favs
puts favs.last
puts favs.length

puts favs.pop
puts favs
puts favs.length
