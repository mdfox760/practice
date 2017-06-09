=begin
Makes a hash, puts the size of the keys, creates a line of the objects in the hash, turns
the hash into an array and lists them and finally, inpects the hash.
=end

  family = { "Kris" => "home_phone = 555-555-5555 home_address = 123 Main st., Hometown, State, Country, zipcode home_email = kris@email.com",
                "Mom" => "home_phone = 555-555-5555 home_address = 123 Main st., Hometown, State, Country, zipcode home_email = mom@email.com",
                "Dad" => "mobile_phone = 555-555-5555 home_phone = 000-000-0000 home_address = 123 Main st., Hometown, State, Country, zipcode home_email = dad@email.com",
                "Bro" => "mobile_phone = 555-555-5555 home_email = brofish@email.com",
                "Cuz" => "mobile_phone = 555-555-5555" }

  puts "Here is the family listed: ".upcase

  family.each { |key, value| puts "#{key} contact info is #{value}" }

#puts family.size
#puts family.keys
#puts family.to_s
#puts family.to_a

#puts family.inspect
  fam = {

    "son" => {
      "Kris" => [ "555-555-5555", "123 Main st., Hometown, State, Country, zipcode" ]
    },

    "father" => {
      "Dad" => [ "555-555-5555", "000-000-0000", "123 Main st., Hometown, State, Country, zipcode" ]
    },

    "brother" => {
      "Bro" => [ "555-555-5555", "123 Main st., Hometown, State, Country, zipcode" ],
      "Bro2" => [ "555-555-5555", "123 Main st., Hometown, State, Country, zipcode" ]
    },

    "ex-wife" => {
      "Wife1" => [ "First ex-wife" ],
      "Mom" => [ "Second ex-wife" ]
    }
  }

    immediate_fam = []

    fam.each do |key, value|
      immediate_fam.each do |key2, value2|
        immediate_fam << value2
      end
    end

    # fam.each_key { |key| puts "#{key}" }
    fam.each_value { |value| puts "#{value}" }
    fam.each_pair { |k, v| puts "Key: #{k},\n Value: #{v}" }
