# select even numbers
a = [1, 2, 3, 4, 5, 6]
puts a.select {|number| number % 2 == 0}
puts "*****"*8
puts [10, 22, 33, 44, 55, 66].select {|num| num % 2 == 0}

# Find word length
names = ["rock", 'paper', 'scissors', 'lizard', 'spock']
puts names.select {|word| word.length > 5}
