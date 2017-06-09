
def while_loop
  i = 0
  numbers = []

    while i < 6
      puts "At the top i is #{i}"
   #  numbers.push(i)

      i += 1
      puts "Numbers now: ", numbers
      puts "At the bottom i is #{i}"
# then use the range operator to do 0 to 5 counts while removing the 6
      (0...6).each do |i|
        puts "adding #{i} to the list"
# pushes the i variable on the *end* of the list
        numbers.push(i)
      end
    end

    puts "The numbers: "

    numbers.each { |num| puts num }

    bigger_number = []

    (0..10).each do |i|
      puts "adding #{i} to the list"
      bigger_number.push(i)
    end
  end

puts while_loop
