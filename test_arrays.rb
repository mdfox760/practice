# A gotcha! All the Array elements store the same hash, changes to one of them
# will affect them all.

a = Array.new(3, Hash.new)

puts a

# => {}
# => {}

a[0]['cat'] = 'feline'

puts a

# => {"cat"=>"feline"}
# => {"cat"=>"feline"}

a[1]['cat'] = 'Harry The cat'

puts a

# => {"cat"=>"Felix"}
# => {"cat"=>"Felix"}

a[2]['cat'] = "Felix the Cat"

puts a
