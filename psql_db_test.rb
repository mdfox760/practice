require 'pg'
require 'dbi'

# conn = PG.connect(hostname, username, password, databasename)
conn = PG.connect( dbname: 'stocks')
conn.exec( "SELECT * FROM portfolio" ) do |result|
  puts " Name            | \tSymbol           | \tSector         | \tIndustry "
  result.each do |row|
    puts "    %s \t|     \t%s \t|      \t%s \t|      \t%s " %
      row.values_at('name', 'symbol', 'sector', 'industry')
  end
end
conn.close
