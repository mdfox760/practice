class Portfolio
  attr_accessor :name, :stock_list

  def initialize(name, stock_list)
    @name = name
    @stock_list = stock_list
  end

  def name
    @name  
  end

  def stock_list
    @stock_list  
  end

  def test_method
    puts "The class Portfolio is working"
  end

  def inspect_stock_list
    puts "The stock list #{name} is made up of #{stock_list}"
  end
end

=begin
 hash_list = { "Exxon Mobile" => "XOM", 
              "Gigamon" => "GIMO", 
              "United States Steel" => "X",
              "Visa" => "V", 
              "Mastercard" => "MA", 
              "Facebook" => "FB", 
              "Goldman Sachs" => "GS",
              "Tesla" => "TSLA", 
              "Microsoft" => "MSFT", 
              "Amazon" => "AMZN", 
              "Bank of America" => "BAC",
              "Conoco Phillips" => "COP", 
              "Apple" => "AAPL", 
              "Alphabet" => "GOOG", 
              "AlphabetL" => "GOOGL",
              "Paypal Holdings" => "PYPL", 
              "American Express" => "AXP", 
              "JPMorgan Chase" => "JPM",
              "MGM" => "MGM", 
              "Las Vegas Sands" => "LVS", 
              "Wells Fargo" => "WFC", 
              "Freeport-McMoran" => "FCX",
              "Netflix" => "NFLX", 
              "Twitter" => "TWTR" }
=end

  #puts hash_list.to_a

p = Portfolio.new("Wishlist", "All the stocks")
p2 = Portfolio.new("Portfolio1", "Less than 10")

puts p.inspect_stock_list
puts p2.inspect_stock_list
