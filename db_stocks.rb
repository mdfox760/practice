require 'pg'
require 'dbi'
require 'table_print'
# conn = PG.connect(hostname, username, password, databasename)
conn = PG.connect( dbname: 'stocks')
  #conn.exec( "select * from portfolio order by name;" ) do |result|
  #puts " Name \tSymbol  \tSector \tIndustry "
  #result.each do |row|
  #  puts " %s\t%s\t%s\t%s " %
  #    row.values_at('name', 'symbol', 'sector', 'industry')
  #end

  puts "List by name"
  stocks = conn.exec("select * from portfolio order by name;").to_a
  tp stocks, "name", "symbol", "sector", "industry"
  #puts stocks.count
  #puts stocks[0..38]
  #puts stocks.first
  #puts stocks.last

  puts "*******"*10
  puts "List by symbol"
  stock_symbols = conn.exec("select * from portfolio order by symbol;").to_a
  tp stock_symbols,  "symbol", "name", "sector", "industry"

  puts "*******"*10
  puts "List by sector"
  stock_sector = conn.exec("select * from portfolio order by sector;").to_a
  tp stock_sector, "sector", "name", "symbol", "industry"

  puts "*******"*10
  puts "List by industry"
  stock_industry = conn.exec("select * from portfolio order by industry;").to_a
  tp stock_industry, "industry", "name", "symbol", "sector"

conn.close
