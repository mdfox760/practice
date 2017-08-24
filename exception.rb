def raise_exception
  puts "I am before the raise."
  raise "An error has occured."
  puts "I am after the raise."
end

def raise_and_rescue
  begin
    puts "I am before the raise."
    raise "An error has occured."
    puts "I am after the raise."
  rescue
    puts "I am rescued."
  end
  puts "I am after the begin block."
end

# Map exception to a variable within a rescue clause.
begin
  raise "A test exception."
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
end

raise_and_rescue
puts "********"
raise_exception