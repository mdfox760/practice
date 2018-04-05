# Finds the median of an array
# Must give an argument in the form of an array
def median(array)
  sorted = array.sort
  len = sorted.length
  (sorted[(len - 1) / 2] + sorted[len / 2]) / 2.0
end

puts median([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
puts median([1, 2, 3])
puts median([125000, 225000, 300000, 500000])
