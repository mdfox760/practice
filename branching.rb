# Branching
def branching
  puts "Hello, what's your name?"
  name = gets.chomp
  puts 'Hello, ' + name.capitalize + '.'
  if (name == 'Matt' or name == 'matt')
    puts "What a great name!"
  else puts "Nice to meet you!"
  end
end

def fortune_teller
  puts "I am a fortune teller. What's your name?"
  print 'Type in your name: > '
  name = gets.chomp
  if (name == 'Matt' or name == 'matt')
    puts 'I see great things in your future.'
  else
    puts 'Your future is .... Oh my! Look at the time!'
    puts 'I really have to go, sorry.'
  end
end

def teacher
  puts 'Hello, and welcome to the class.'
  puts 'My name is Virtual Teacher. And your name is ....?'
  name = gets.chomp

  if name == name.capitalize
    puts 'Please take a seat, ' + name + '.'
  else
    puts name + '? You mean ' + name.capitalize + ', right?'
    puts 'Don\'t you even know how to spell your name?'
    reply = gets.chomp

    if reply.downcase == 'yes'
      puts "Hmmph!  Well, sit down."
    else
      puts 'You have a lot to learn, padawan!'
    end
  end
end

def looping
  # echos text unless you enter bye
  puts "Type something or to quit: enter bye: > "
  command = ''
  while command != 'bye'
    puts command
    command = gets.chomp
  end
  puts 'Come again soon!'
end

 branching
# fortune_teller
# teacher
# looping
