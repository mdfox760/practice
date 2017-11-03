  require 'csv'

  # Read a CSV file and convert to hash. Line by line.
  # The file stockreader2.rb does this as well but differently.

  data = Array.new

  CSV.foreach( "companylist.csv", { encoding: "UTF-8", headers: true, header_converters: :symbol, converters: :all }) do |row| data << row.to_hash
  end

  data

  data.each do |stocks|
    puts "Stock Symbol: #{stocks[:symbol]}
          Stock Name: #{stocks[:name]}
          Stock Sector: #{stocks[:sector]}
          Stock Industry: #{stocks[:industry]}"
  end

  puts '---' * 10
  puts " This is the first stock in the array as a hash. #{data[0]} "
  puts '---' * 10
  puts "There are #{data.count} stocks in the list"
  puts '---' * 10
  puts " This is the last stock in the array as a hash. #{data[3195]} "
