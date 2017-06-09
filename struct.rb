# Creates a subclass and displays verically

Customer = Struct.new(:name, :address, :zip)

sam = Customer.new("Sucker Sam", "123 Main", "12345")
mike = Customer.new("Mike Peters", "345 Elm", "54321")

puts '---' * 10
sam.each { |x| puts(x) }

puts '---' * 10
mike.each { |x| puts(x) }

puts '---' * 10
puts mike
