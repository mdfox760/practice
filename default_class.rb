# Initialize with default values

class Car
  attr_accessor :color, :doors

  def initialize
    yield(self) # self is the object being initialized.
  end
end

# You need a block so yield will work.
car = Car.new do |c|
  c.color = "Red"
  c.doors = 4
end

puts "Defaults \nColor: #{car.color} \nDoors: #{car.doors}"

# Change the default values.
car.color = "Blue"
car.doors = 2
puts "Car color: #{car.color} \nDoors: #{car.doors}"
puts "Default values: \nColor: #{car.color} \nDoors: #{car.doors}"

puts car.color
puts car.doors
