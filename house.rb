class House
  attr_accessor :address
  attr_accessor :square_feet
  attr_accessor :bedrooms
  attr_accessor :baths
  attr_accessor :price

  def initialize( where, price, area, beds, baths )
    @address = where
    @price = price
    @square_feet = area
    @bedrooms = beds
    @baths = baths
  end

  def display
    puts "The address is #{@address}"
    puts "The asking price is $#{@price}."
    puts "It has #{@square_feet} square feet."
    puts "It has #{@bedrooms} bedrooms."
    puts "It has #{@baths} bathrooms."
  end

end

small_house = House.new("234 Main st.", 325000, 1300, "2", "2")
large_house = House.new("123 Elm st.", 600000, 2600, "4", "3")
puts "---" * 10
puts "Small house:"
puts small_house.display
puts "$#{small_house.price}"
puts "Price per sq. ft.:"
puts "$#{small_house.price/small_house.square_feet}"
puts "---" * 10
puts "Large house:"
puts large_house.display
puts "Price per sq. ft.:"
puts "$#{large_house.price/large_house.square_feet}"
