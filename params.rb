# Couldn't get this to do what I intended.
class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def name
    @name
  end

  def age
    @age
  end

  def name_list
    if @name.nil?
      puts "No names entered."
    elsif @name.respond_to?("each")
      @name.each do |name|
        puts "Name: #{name}"
      end
    else
      puts "Hello #{@name}"
    end
  end

  def age_list
    if @age.nil?
      puts "No ages entered."
    elsif @age.respond_to?("each")
      @age.each do |age|
        puts "Age: #{age}"
      end
    else
      puts "Hello #{@name}, we recorded you at #{@age} years old."
    end
  end

end

john = Person.new("John", 51)
mary = Person.new("Mary", 45)
peter = Person.new("Peter", 27)
paul = Person.new("Paul", 34)
puts john
puts mary
puts peter
puts paul

puts john.name + " " + john.age.to_s
puts john.age
puts john.inspect

puts john.age_list
puts mary.age_list
