require 'pg'
require 'dbi'
require 'table_print'

# conn = PG.connect(hostname, username, password, databasename)
conn = PG.connect( dbname: 'stocks')

stock_list = conn.exec( "SELECT * FROM portfolio order by name;" )
tp stock_list, "name", "symbol", "sector", "industry"

conn.close
