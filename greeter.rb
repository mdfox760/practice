def greeter
  puts "Hello. What's your first name? "
  print ' Type your first name. > '
  first_name = gets.chomp
  puts "Do you have a middle name? If so, type it in. "
  print ' > '
  middle_name = gets.chomp
  puts "Finally, what is your last name? "
  print ' > '
  last_name = gets.chomp
  puts "Hello, " + first_name + " " + middle_name + " " +last_name + "! Glad to meet you."
end

def short_greeter
  puts "Type in your full name. "
  print ' > '
  name = gets.chomp
  puts "Hello, " + name + ". You are becoming a programmer, I see. Good for you."
end

#puts greeter
puts '******'
puts short_greeter
