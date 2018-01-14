arr = Array.new #=> []
arr3 = Array.new(3) #=> [nil, nil, nil]
arr3_args = Array.new(3, true) #=> [true, true, true]
puts arr3_args

countdown = %w[ten nine eight seven six five four three two one Blast_Off]
puts countdown

hashes_in_array = Array.new(4) {Hash.new} #=> [{}, {}, {}, {}]
puts hashes_in_array

indexy = Array.new(4) {|i| i.to_s}
puts indexy # returns 0 1 2 3 on the verticle

# Buld up a multi-dimensional array
empty_table = Array.new(3) { Array.new(3) }
ha = Array({:letter => "a", :number => "100", :name => "Matt"})
puts "First element in ha: "
puts ha.first
puts "Last element in ha: "
puts ha.last
# to return first n elements of an array, use take.
puts "First two elements in ha: "
puts ha.take(2)
