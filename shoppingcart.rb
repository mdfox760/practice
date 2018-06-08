# Work in progress

class ShoppingCart
  attr_accessor :items

  def initialize
    @items = []
  end

  def calculate_total
    items.map(&:price).inject(:+)
  end

end

class Order
  def process_order(cart)
    cart.calculate_total
  end
end

cart = ShoppingCart.new
order = Order.new
