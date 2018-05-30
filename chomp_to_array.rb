puts "Enter the array numbers (type 'done' to get out)"
input = gets.chomp
num_arr = []
while input != 'done'
  num_arr << input.to_i
  input = gets.chomp
end
puts num_arr

puts "Enter the words for the array (type 'done' to get out)"
input = gets.chomp
word_arr = []
while input != 'done'
  word_arr << input.to_s
  input = gets.chomp
end
puts word_arr
