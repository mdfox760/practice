do_something_smart = "Smart code goes here."

begin
  1/0
rescue
  puts "Got an exception error, the ZeroDivisionError. I should be smart and fix it."
  puts do_something_smart
end

def example
  begin
    1/0
  rescue => e
  end
end

puts example

def example2
  begin
    1/0
  rescue ZeroDivisionError => e
    puts "Exception Class: #{ e.class.name }"
    puts "Exception Message: #{ e.message }"
    # Never put backtrace into production
    puts "Exception Backtrace: #{ e.backtrace }"
  end
end

puts example2

begin
  # raises an ArgumentError with the message "You messed up"
  raise ArgumentError.new("You messed up and threw an ArgumentError.")
rescue ArgumentError => e
  puts e.message
end
