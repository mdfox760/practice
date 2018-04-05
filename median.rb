# Finds the median of an array
# Must give an argument in the form of an array
def median(array)
  sorted = array.sort
  len = sorted.length
  (sorted[(len - 1) / 2] + sorted[len / 2]) / 2.0
end

puts median([1, 2, 3])
puts median([1, 20, 3, 4, 80, 9, 10])
puts median([25000, 75000, 125000, 180000, 225000, 320000, 10000000, 2000000, 500000, 375000])
