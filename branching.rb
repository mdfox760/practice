# Branching
def branching
  puts "Hello, what's your name?"
  name = gets.chomp
  puts 'Hello, ' + name.capitalize + '.'
  if name == 'Matt'
    puts "What a great name!"
  else puts "Nice to meet you!"
  end
end

def fortune_teller
  puts "I am a fortune teller. What's your name?"
  print 'Type in your name: > '
  name = gets.chomp
  if name == 'Matt'
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
      puts 'Get out!'
    end
  end
end

# branching
# fortune_teller
teacher
