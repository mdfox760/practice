
class Product
  attr_accessor :products

  def initialize(products)
    @products = products
  end

  def products
    @products
  end

  def product_list
    product_list = {
      "baseball hats" => { type: "Ballcap", name: "Baseball", price: "10.99" },
      "formal hats" => { type: "Formal", name: "Fedora", price: "39.99" },
      "Jackets" => { name: "Hoodie", price: "19.99" },
      "Shirts" => { name: "T-shirt", price: "19.99" }
    }

    hat_list = {
      "baseball_hats" => {type: "Ballcap", name: "Padres", price: 19.99},
      "formal_hats" => {type: "Formal", name: "Fedora", price: 39.99},
      "formal_german_hats" => {type: "Formal", name: "Hamburg", price: 49.99}
    }
  end

  def test_method
    puts "The class is working"
  end

  def inspect
    puts "The products are #{products}."
  end
end

StoreProduct = Struct.new(:type, :name, :price)

shirts = StoreProduct.new("t-shirts", "Haynes", 29.99)
fruit_of_the_loom = StoreProduct.new("t-shirts", "Fruit of the Loom", 12.99)
polo_shirts = StoreProduct.new("Polo shirts", "Izod", 39.00)
baseball_hats = StoreProduct.new("Baseball", "MLB", 49.99)
formal_hats = StoreProduct.new("Formal", "Fedora", 39.99)
formal_german_hats = StoreProduct.new("Formal", "Hamburg", 49.99)
puts '---' * 10
shirts.each { |x| puts(x) }
# puts shirts["name"]
puts shirts[:name]
puts fruit_of_the_loom[:name]
# puts shirts.to_a[1]
puts baseball_hats[:type]
puts baseball_hats[:name]
puts baseball_hats[:price]
puts formal_german_hats[:name]
puts formal_german_hats[:type]
puts formal_german_hats[:price]

puts '---' * 10
formal_hats.each { |x| puts(x) }
puts formal_hats
# puts formal_hats.to_a[1]

shirts.each_pair {|name, value| puts ("#{name}: #{value}")}
formal_hats.each_pair {|name, value| puts ("#{name}: #{value}")}

# puts shirts.members
puts "////"*3
s = Product.new ()

puts s.product_list.sort
puts "****"*3
puts s.product_list.each {|l| puts "#{l}"}
