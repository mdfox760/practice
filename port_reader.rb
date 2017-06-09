  # Read a CSV file and convert to hash. All at once
  # The file stockreader.rb does this as well but line by line.
  # This reads a different file than stockreader.rb 
  # Apple Numbers app messed the csv file up.

  require 'csv'

  data = CSV.read( "real_portfolio.csv", { encoding: "UTF-8", headers: true, 
  header_converters: :symbol, converters: :all })

  hashed_data = data.map { |d| d.to_hash }
  
  # hashed_data.each {|i| puts "The stocks are an array of hashes.  Each array is #{i}"}
  
  hashed_data.each do |portfolio|
    puts " Stock Name: #{portfolio[:name]}
          -- Stock Symbol: #{portfolio[:symbol]}     
          -- Last Price: #{portfolio[:last_price]} 
          -- Change: #{portfolio[:change]} "
  end

  puts '---' * 10
  puts " This is the first stock in the array as a hash. #{hashed_data[0]} "
  puts '---' * 10
  puts "There are #{hashed_data.count} stocks in the list"
  puts '---' * 10
  puts " This is the last stock in the array as a hash. #{hashed_data[25]} "

