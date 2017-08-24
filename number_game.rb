answer = 1 + rand(10)
num = 0

while num != answer
  print "What number am I thinking of now? "
  num = Integer(gets.chomp)
  if num != answer
    puts 'Wrong!'
  end
end

puts 'Correct!'