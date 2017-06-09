class Car
  attr_accessor :name, :year, :kind, :color, :model, :style

  inventory_cars = { "Ford" => "year = 2017, kind = truck, color = White, model = F150, style = King Cab",
                     "Toyota" => "year = 2017, kind = 4Door, color = Red, model = Supra, style = 3-door",
                     "Tesla" => "year = 2017 kind = Electric, color = Blue, model = S, style = P190D" }

  inventory_cars.each { |key, value| puts "#{key} car info is #{value}" }
  
  puts '---' * 10

  def cars
    puts "INVENTORY"
	
    cars = { "Ford" => "year = 2017, kind = truck, color = White, model = F150, style = King Cab",
             "Toyota" => "year = 2017, kind = 4Door, color = Red, model = Supra, style = 3-door",
             "Tesla" => "year = 2017, kind = Electric, color = Blue, model = S, style = P190D" }

    puts cars.each { |key, value| puts "#{key} car info is #{value}" }

    puts '---' * 10

  end

  def name
    @name
  end

  def kind
    @kind
  end

  def color
    @color
  end

  def model
    @model
  end

  def style
    @style
  end

  def year
    @year
  end

  def initialize(name, year, kind, color, model, style)
    @name = name
    @year = year
    @kind = kind
    @color = color
    @model = model
    @style = style
  end

  def inspect
    "A car of the #{@kind} class." +
    " A #{@color} #{@year} #{@name} #{@kind} #{@model} #{@style}."
  end
    
end

c = Car.new "Tesla", "2017", "S", "Blue", "Electric", "2Door"

    new_cars = {}
    new_cars[:Ford] = "2017 White F-150 Truck"
    new_cars[:Tesla] = "2017 Red X class P190D 4Door"
    new_cars[:Chevy] = "2017 Blue Camero 2Door"
    puts "NEW CARS"
    #puts new_cars
    puts new_cars.each { |key, value| puts "\t#{key} car info is \t#{value}" }

    puts '---' * 10

puts new_cars.keys
puts new_cars[:Chevy]

puts '---' * 10

puts c.cars
puts c.inspect
