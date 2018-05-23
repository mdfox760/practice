# Initialize with default values.
# See default_class.rb for variation.

class Car
  attr_accessor :color, :doors

  def initialize
    yield(self) # self is the object being initialized.
  end
end

car = Car.new do |c|
  c.color = "Red"
  c.doors = 4
end

puts "The car's color is #{car.color} and it has #{car.doors} doors."
