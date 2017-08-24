puts "Enter the array elements (type 'done' to get out)"
input = gets.chomp
arr = []
while input != 'done'
  arr << input.to_i
  input = gets.chomp
end

puts arr