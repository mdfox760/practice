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

puts "********"

# code below raises TypeError
begin
  raise 1234.0
rescue => error
  puts error.inspect
end

# code below raises StandardError
begin
  raise Exception.new
rescue Exception => error
  puts "Correct!"
end

class Name
  # Define default getter methods, but not setter methods.
  attr_reader :first, :last
  # When someone tries to set a first name, enforce rules about it.
  def first=(first)
    if first == nil or first.size == 0
      raise ArgumentError.new('Everyone must have a first name.')
    end
    first = first.dup
    first[0] = first[0].chr.capitalize
    @first = first
  end

  # When someone tries to set a last name, enforce rules about it.
  def last=(last)
    if last == nil or last.size == 0
      raise ArgumentError.new('Everyone must have a last name.')
    end
    @last = last
  end

  def full_name
    "#{@first} #{@last}"
  end
  # Delegate to the setter methods instead of setting the instance
  # variables directly.
  def initialize(first, last)
    self.first = first
    self.last = last
  end
end

jacob = Name.new('Jacob', 'Berendes')
jacob.first = 'Mary Sue'
jacob.full_name # => "Mary Sue Berendes"
john = Name.new('john', 'von Neumann')
john.full_name # => "John von Neumann"
john.first = 'john'
john.first # => "John"
# john.first = nil
# code above throws ArgumentError: "Everyone must have a first name."
# code below throws ArgumentError: "Everyone must have a last name."
# kero = Name.new('Kero, international football star and performance artist', nil)
# p kero
# kero_football = Name.new('Kero, international football star and performance artist', nil)
# p kero_football
# This almost worked.
# kero.first = 'Kero'
# kero.last = 'Football'
# kero.full_name = 'Kero Football'
# Finally, success without an error. Except for a few .
kero_football = Name.new('Kero', 'Football')
puts kero_football
puts kero_football.full_name
