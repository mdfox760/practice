class House
  attr_accessor :address
  attr_accessor :square_feet
  attr_accessor :bedrooms
  attr_accessor :baths
  attr_accessor :price

  def initialize( where, area, beds, baths, price )
    @address = where
    @square_feet = area
    @bedrooms = beds
    @baths = baths
    @price = price
  end

  def display
    puts "The address is #{@address}"
    puts "It has #{@square_feet} square feet."
    puts "It has #{@bedrooms} bedrooms."
    puts "It has #{@baths} bathrooms."
    puts "The asking price is $#{@price}."
  end

end

small_house = House.new("234 Main st.", "800", "2", "2", "200,000")
large_house = House.new("123 Elm st.", "2500", "4", "3", "350,000")
puts "---" * 10
puts small_house.display
puts small_house.price
puts small_house.price.to_f/small_house.square_feet.to_f
puts "---" * 10
puts large_house.display
puts large_house.bedrooms
puts large_house.price.to_f/large_house.square_feet.to_f
