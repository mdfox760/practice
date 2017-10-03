class TimeFun

  def hours_in_year
    hours = 24 * 7 * 52
    puts "There are " + hours.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse + " hours in a year."
  end

  def minutes_in_decade
    minutes = 60 * 24 * 365 * 10
    puts "There are " + minutes.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse + " minutes in a decade."
  end

  def seconds_in_year
    siy = 60 * 60 * 24 * 365
    puts "There are " + siy.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse + " seconds in a year."
  end

  # The seconds_old method may not work right. The output could be way too much. Damn.
  def seconds_old
    print "How old are you?"
    print ' > '
    age = $stdin.gets.chomp
    secondsOld = age * 31536000
    puts "You are " + secondsOld.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse + " seconds old."
  end

end

t = TimeFun.new

puts t.hours_in_year
puts t.minutes_in_decade
puts t.seconds_in_year
# puts t.seconds_old

# To use the Time class ---
n = Time.new
puts ("The time is now: ")
puts n
puts "\n"
# Make a time for a specific moment
puts "A tragic day: "
puts Time.mktime(2001, 9, 11, 7, 28)
