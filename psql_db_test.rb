require 'pg'
require 'dbi'  
  
# conn = PG.connect(hostname, username, password, databasename)  
conn = PG.connect( dbname: 'ruby')  
conn.exec( "SELECT * FROM student" ) do |result|
  puts "     ID | Name            | Rank"
  result.each do |row|
    puts " %6d | %-15s | %s " %
      row.values_at('id', 'name', 'rank')
  end
end
conn.close