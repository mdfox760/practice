class Product

  def initialize
    @distributor
    @item
    @price
    @vendor
  end

  def distributor
  end

  def item
    items = "Shirts, Hats and Hoodies"

    puts "SKU'S"
    skus = { "101" => "shirts", "201" => "hats", "301" => "hoodies" }
    skus.each {|key, value| puts "#{key} SKU is #{value}"}
    skus.each do |skus|
      puts "Sku's in inventory: #{skus}"
    end
    puts "The total number of skus: "
    skus.count
  end

  def price
    wholesale_shirts = { "shirts" => "$9.99" }
    wholesale_hats = { "hats" => "$12.99"}
    wholesale_hoodies = { "hoodies" => "$19.99" }

    retail_shirts = { "shirts" => "$19.99" }
    retail_hats = { "hats" => "$24.99" }
    retail_hoodies = { "hoodies" => "$39.99" }

    puts "PRICES WHOLESALE"
    puts wholesale_hats
    puts wholesale_hoodies
    puts wholesale_shirts

    puts "PRICES RETAIL"
    puts retail_hats
    puts retail_hoodies
    puts retail_shirts
  end

  def vendor
    shirts = { "Joe's shirts" => "contact = Joe Smith \tphone = 951-555-5555 \n\taddress = 123 Main st., Temecula, CA. 92592 \n\temail = joe@email.com" }

    hats = { "Happy Hats" => "contact = Debbie Dell \tphone = 951-555-5556 \n\taddress = 123 Elm st., Temecula, CA. 92591 \n\temail = deb@email.com" }

    hoodies = { "Have a hoodie" => "contact = Don Jackson \tphone = 951-555-5557 \n\taddress = 123 H st., Oceanside, CA. 92054 \n\temail = Don@email.com" }

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

product = Product.new()

puts product.item
puts product.vendor.sort
puts product.price
