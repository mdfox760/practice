class Person
  attr_accessor :name, :address, :phone

  def initialize( name, address, phone )
    @name = name, @address = address, @phone = phone
  end

  def name
    @name
  end

  def address
    @address
  end

  def phone
    @phone
  end

  def inspect
    "A person named #{@name}."
  end
end

p = Person.new("Hal Person", "456 Main st.", "555-555-5555")

puts p.inspect
