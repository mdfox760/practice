  require 'csv'

  # Read a CSV file and convert to hash. All at once
  # The file stockreader.rb does this as well but line by line.

  data = CSV.read( "companylist.csv", { encoding: "UTF-8", headers: true, 
  header_converters: :symbol, converters: :all })

  hashed_data = data.map { |d| d.to_hash }
  
  # hashed_data.each {|i| puts "The stocks are an array of hashes.  Each array is #{i}"}
  
  hashed_data.each do |stocks|
    puts "Stock Symbol: #{stocks[:symbol]}
          Stock Name: #{stocks[:name]}
          Stock LastSale: #{stocks[:lastsale]}
          Stock Market Cap: #{stocks[:marketcap]}
          Stock ADR-TSO: #{stocks[:adr_tso]}
          Stock IPO Year: #{stocks[:ipoyear]}
          Stock Sector: #{stocks[:sector]}
          Stock Industry: #{stocks[:industry]}
          Stock Summary Quote: #{stocks[:summary_quote]}"
  end

  puts '---' * 10
  puts " This is the first stock in the array as a hash. #{hashed_data[0]} "
  puts '---' * 10
  puts "There are #{hashed_data.count} stocks in the list"
  puts '---' * 10
  puts " This is the last stock in the array as a hash. #{hashed_data[3195]} "

