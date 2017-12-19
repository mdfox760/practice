# Creates a subclass and displays verically

Customer = Struct.new(:name, :address, :zip)

sam = Customer.new("Sucker Sam", "123 Main", "12345")
mike = Customer.new("Mike Peters", "345 Elm", "54321")

puts '---' * 10
sam.each { |x| puts(x) }
p sam["name"]
p sam[:name]
p sam.to_a[1]
p sam == mike

puts '---' * 10
mike.each { |x| puts(x) }
puts mike
p mike.to_a[1]

sam.each_pair {|name, value| puts ("#{name}: #{value}")}
mike.each_pair {|name, value| puts ("#{name}: #{value}")}

p sam.members

Lots = Struct.new(:a, :b, :c, :d, :e, :f)
l = Lots.new(11, 22, 33, 44, 55, 66)
p l.select { |v| v.even? }
