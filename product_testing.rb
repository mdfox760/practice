
class Product
  attr_accessor :product

  def initialize(product)
    @product = product
  end

  def product
    @product
  end

  def product_list
    product_list = {
      "baseball hats" => { type: "Ballcap", name: "Baseball", price: "10.99" },
      "formal hats" => { type: "Formal", name: "Fedora", price: "39.99" },
      "Jackets" => { name: "Hoodie", price: "19.99" },
      "Shirts" => { name: "T-shirt", price: "19.99" }
    }

    puts product_list.each { |k, v| puts "Product List: #{k} #{v}" }

    hat_list = {
      "baseball_hats" => {type: "Ballcap", name: "Padres", price: 19.99},
      "formal_hats" => {type: "Formal", name: "Fedora", price: 39.99},
      "formal_german_hats" => {type: "Formal", name: "Hamburg", price: 49.99}
    }

    puts hat_list.each { |k, v| puts "#{k} #{v}" }
  end

  def test_method
    puts "The class is working"
  end

  def inspect
    puts "The products are #{product}."
  end
end

s = Product.new ()

puts s.product_list

StoreProduct = Struct.new(:type, :name, :price)

shirts = StoreProduct.new("t-shirts", "Haynes", 29.99)
