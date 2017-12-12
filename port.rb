require 'stock_quote'
require 'json'

class Portfolio
  attr_accessor :name, :stock_list

  def initialize(name, stock_list)
    @name = name
    @stock_list = stock_list
  end

  def history
    # May just include start_date.
    # stock = StockQuote::Stock.history("symbol", "start_date", "end_date")
    mastercard = StockQuote::Stock.history("MA", "December 01, 2017")
  end

  def name
    @name
  end

  def stock_list
    @stock_list
    port = %w[ AAPL AMZN GOOG GOOGL AXP BABA BAC BIDU COP
  XOM FB FCX GIMO GS JD JPM LVS MA MGM MSFT NFLX NVDA
   PYPL RP SEND SHOP SNAP SQ SPLK SBUX SOHU TSLA TWTR
    X VEEV V WB WFC WYNN WYNMY ]

    portfolio_1 = { "Apple" => "AAPL",
                  "Amazon" => "AMZN",
                  "Alphabet" => "GOOG",
                  "Alphabet C Class" => "GOOGL",
                  "American Express" => "AXP",
                  "Alibaba" => "BABA",
                  "Bank of America" => "BAC",
                  "Baidu" => "BIDU",
                  "Conoco Phillips" => "COP",
                  "Exxon Mobile" => "XOM",
                  "Facebook" => "FB",
                  "Freeport-McMoran" => "FCX",
                  "Gigamon" => "GIMO",
                  "Goldman Sachs" => "GS",
                  "JD.com" => "JD",
                  "JPMorgan Chase" => "JPM",
                  "Las Vegas Sands" => "LVS",
                  "Mastercard" => "MA",
                  "MGM" => "MGM",
                  "Microsoft" => "MSFT",
                  "Netflix" => "NFLX",
                  "Nvidia" => "NVDA",
                  "Paypal Holdings" => "PYPL",
                  "RealPage" => "RP",
                  "SendGrid" => "SEND",
                  "Shopify" => "SHOP",
                  "Snap" => "SNAP",
                  "Square" => "SQ",
                  "Splunk" => "SPLK",
                  "Starbucks" => "SBUX",
                  "Sohu" => "SOHU",
                  "Tesla" => "TSLA",
                  "Twitter" => "TWTR",
                  "United States Steel" => "X",
                  "Veeve Systems" => "VEEV",
                  "Visa" => "V",
                  "Weibo" => "WB",
                  "Wells Fargo" => "WFC",
                  "Wynn" => "WYNN",
                  "Wynn Macau" => "WYNMY" }

    # keys = portfolio_1.keys.sort
    # values = portfolio_1.values.sort
    # list = portfolio_1.each do |keys, values|
    #         puts "#{keys}: #{values}"
    #       end
    # list.values.to_a
    # list.values.split
  #  list = StockQuote::Stock.quote(%w[ AAPL AMZN GOOG GOOGL AXP BABA BAC BIDU COP
  # XOM FB FCX GIMO GS JD JPM LVS MA MGM MSFT NFLX NVDA PYPL RP SEND SHOP SNAP SQ
  #  SPLK SBUX SOHU TSLA TWTR X VEEV V WB WFC WYNN WYNMY ])
    visa = StockQuote::Stock.quote("V")
    puts "Symbol: " + visa.symbol
    puts "Stock last: " + visa.l
    puts "Stock open: " + visa.op
    puts "Stock PE: " + visa.pe
    puts "Reuters :" + visa.management.to_s
    puts "\n"
    #stock.each do |symbol, quote|
    #  puts "#{symbol}: #{quote}"
    #end
  end

  def test_method
    puts "The class Portfolio is working"
  end

  def inspect_stock_list
    puts "The stock list #{name} is made up of #{stock_list}"
  end
end

# puts hash_list.to_a

p = Portfolio.new("Wishlist", "All the stocks")
# p2 = Portfolio.new("portfolio_1", "Less than 10")
puts "Mastercard history: "
puts p.history
# puts p.inspect_stock_list
puts p.stock_list
# puts p2.inspect_stock_list

# keys = hash_list.keys
# values = hash_list.values
# portfolio = values.to_a
