class Product

  def initialize
  end

  def shirts
  end

  def shirt_skus
    puts "Shirt SKU'S"
    skus = { "101" => "T shirts", "201" => "Polo shirts", "301" => "Dress shirts" }
    skus.each {|key, value| puts "#{key} SKU is #{value}"}
  end

  def hats
  end

  def hat_skus
    puts "Hat SKU'S"
    skus = { "1001" => "Baseball hats", "2001" => "Fedoras", "3001" => "Cowboy hats" }
    skus.each {|key, value| puts "#{key} SKU is #{value}"}
  end

  def hoodies
  end

  def hoodie_skus
    puts "Hoodie SKU'S"
    skus = { "10" => "Pullover hoodies", "20" => "Zipper hoodies", "30" => "No pocket hoodies" }
    skus.each {|key, value| puts "#{key} SKU is #{value}"}
  end

  def wholesale_prices
    wholesale_shirts = { "shirts" => { "Short sleeve T shirts" => "$9.99", "Long sleeve T shirts" => "19.99", "Polo shirts" => "19.99", "Dress shirts" => "29.99" } }
    wholesale_hats = { "hats" => { "Baseball hats" => "$6.99", "Fedoras" => "9.99", "Cowboy hats" => "12.99" } }
    wholesale_hoodies = { "hoodies" => { "Pullover hoodies" => "$9.99", "Zipper hoodies" => "7.99", "No pocket hoodies" => "12.99" } }
    
    puts '---' * 10
    puts "WHOLESALE PRICES"
    wholesale_shirts.each {|key, value| puts "#{key} are #{value}"}
    wholesale_shirts.each do |s|
      puts s.to_a
    end
    
    wholesale_hats.each do |h|
      puts h.to_a
    end

    wholesale_hoodies.each do |hood|
      puts hood.to_a
    end
  end

  def retail_prices
    retail_shirts = { "shirts" => { "Short sleeve T shirts" => "$19.99", "Long sleeve T shirts" => "25.99", "Polo shirts" => "29.99", "Dress shirts" => "39.99" } }

    retail_hats = { "hats" => { "Baseball hats" => "$12.99", "Fedoras" => "29.99", "Cowboy hats" => "19.99" } }

    retail_hoodies = { "hoodies" => { "Pullover hoodies" => "$19.99", "Zipper hoodies" => "17.99", "No pocket hoodies" => "22.99" } }
    
    puts '---' * 10
    puts "RETAIL PRICES"
    retail_shirts.each do |s|
      puts s.to_a
    end
    
    retail_hats.each do |h|
      puts h.to_a
    end
    
    retail_hoodies.each do |hood|
      puts hood.to_a
    end
  end

  def vendors
    shirts = { "Joe's shirts" => "contact = Joe Smith \tphone = 951-555-5555 \n\taddress = 123 Main st., Temecula, CA. 92592 \n\temail = joe@email.com" }

    hats = { "Happy Hats" => "contact = Debbie Dell \tphone = 951-555-5556 \n\taddress = 123 Elm st., Temecula, CA. 92591 \n\temail = deb@email.com" }

    hoodies = { "Have a hoodie" => "contact = Don Jackson \tphone = 951-555-5557 \n\taddress = 123 H st., Oceanside, CA. 92054 \n\temail = Don@email.com" }

    puts '---' * 10
    puts "VENDORS"
    shirts.each do |s|
    puts s.to_a
    end
 
    hats.each do |h|
    puts h.to_a
    end

    hoodies.each do |hood|
    puts hood.to_a
    end
  end
end

p = Product.new()
puts p.shirt_skus
puts p.wholesale_prices
puts p.retail_prices

