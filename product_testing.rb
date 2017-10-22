
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
      "baseball hats" => { name: "Baseball", price: "10.99" },
      "formal hats" => { name: "Fedora", price: "39.99" },
      "Jackets" => { name: "Hoodie", price: "19.99" },
      "Shirts" => { name: "T-shirt", price: "19.99" }
    }

  #product_list.each do |p|
  #    puts "#{p}"
  #  end
  end

  def test_method
    puts "The class is working"
  end

  def inspect
    #puts "The product is #{products}."
  end
end

p = Product.new ()

puts p.product_list.sort
