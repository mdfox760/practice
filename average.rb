# sum an array and find the average
num = [1, 11, 22, 33, 44, 55]
bigger_num = [123, 234, 1001, 456, 567, 678]
sum = 0

num.each do |i|
  sum += i
end

bigger_num.each do |i|
  sum += i
end

num.inject(0, :+)
puts "Average of num array:"
# Returns whole number
puts num.sum/num.size
# Returns float
puts num.sum/num.size.to_f
# Limits precision to 3 digits
puts sprintf("%0.3f", num.sum/num.size.to_f)
puts "****"*5

puts "Average of bigger_num array:"
bigger_num.inject(0, :+)
puts bigger_num.sum/num.size
# Returns float
puts bigger_num.sum/num.size.to_f
# Limits precision to 4 digits
puts sprintf("%0.4f", bigger_num.sum/num.size.to_f)
