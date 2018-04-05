# Finds the median of an array
# Must give an argument in the form of an array
def median(array)
  sorted = array.sort
  len = sorted.length
  (sorted[(len - 1) / 2] + sorted[len / 2]) / 2.0
end
# argument directly
puts "median as a direct argument:"
puts median([1, 20, 3, 4, 80, 9, 10])

 # argument as a variable
puts "median as a variable:"
small_arr = [1, 2, 3]
big_arr = [25000, 15000, 30000, 75000, 125000, 180000, 320000, 10000000, 5000000, 2000000, 500000, 375000]
arr = [10, 20, 30, 40, 50]

puts median(small_arr)
puts median(big_arr)
puts median(arr)
