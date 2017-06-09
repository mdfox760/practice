# make a new array
cust = Array.new

# add a couple of customers to the array. 
cust.push("Johnny Rotten", "Ned Needles")

# add a couple of new customers to the array, show them, add a coule more, show them
# then show the old customers.
newcust = ["cust1", "cust2"]
puts "Customers : " + newcust.to_s
newcust.push("cust3", "cust4")
puts "New Customers : " + newcust.to_s
puts "Old Customers : " + cust.to_s

# add newcust to cust and show them all. 
cust = cust + newcust
puts "Customers : " + cust.to_s

# Give a count of all customers. 
puts cust.size
