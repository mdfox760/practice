def angry_boss
  puts "Boss: 'You're always bothering me. Whaddaya want?' "
  print ' > '
  reply = gets.chomp
  puts "WHADDAYA MEAN, '"  + reply +  "'?! YOU'RE FIRED!"
end

puts "You just entered your bosses office with a request. Tell him what you want."
puts angry_boss
