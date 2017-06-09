=begin
Makes a hash, puts the size of the keys, creates a line of the objects in the hash, turns
the hash into an array and lists them and finally, inpects the hash.
=end

customers = {"cust1" => "Joe", "cust2" => "Bob", "cust3" => "Mary"}
puts customers.size
puts customers.keys
puts customers.to_s
puts customers.to_a
puts customers

puts customers.inspect
