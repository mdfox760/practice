require "pp"

class FamilyInfo

  def family

    family = { "Son" => "mobile_phone = 555-555-5555 home_address = 123 Main st., Hometown, State, Country, zipcode home_email = son@email.com",
                  "Mom" => "mobile_phone = 555-555-5555 home_address = 123 Main st., Hometown, State, Country, zipcode home_email = mom@email.com",
                  "Dad" => "mobile_phone = 555-555-5555 home_phone = 000-000-0000 home_address = 123 Main st., Hometown, State, Country, zipcode home_email = dad@email.com",
                  "Bro" => "mobile_phone = 555-555-5555 home_email = brofish@email.com",
                  "Cuz" => "mobile_phone = 555-555-5555" }

    puts "Here is the family listed: ".upcase

    family.each { |key, value| puts "#{key} contact info is #{value}" }
  end

  def fam_symbols
    son = { "Son" => { :home_phone => "555-555-5555",
                          :home_address => "123 Main st., Hometown, State, Country, zipcode",
                          :home_email => "son@email.com" } }
    mom = { "Mom" => { :home_phone => "555-555-5555",
                           :home_address => "123 Main st., Hometown, State, Country, zipcode",
                           :home_email => "mom@email.com" } }
    dad = { "Dad" => { :home_phone => "000-000-0000",
                          :mobile_phone => "555-555-5555",
                          :home_address => "123 Main st., Hometown, State, Country, zipcode",
                          :home_email => "dad@email.com" } }
    bro = { "Bro" => { :mobile_phone => "555-555-5555",
                           :home_email => "brofish@email.com"} }
    cuz = { "Cuz" => { :mobile_phone => "555-555-5555" } }

    son.each { |key, value| puts "#{key} is #{value}" }
    mom.each { |key, value| puts "#{key} is #{value}" }
    dad.each { |key, value| puts "#{key} is #{value}" }
    bro.each { |key, value| puts "#{key} is #{value}" }
    cuz.each { |key, value| puts "#{key} is #{value}" }
  end

  def son
    son = { "Son" => { :mobile_phone => "555-555-5555",
                          :home_address => "123 Main st., Hometown, State, Country, zipcode",
                          :home_email => "son@email.com" } }

    son.to_a

    son.each { |key, value| puts "#{key} is #{value}" }
  end

  def mom
    mom = { "Mom" => { :mobile_phone => "555-555-5555",
                           :home_address => "123 Main st., Hometown, State, Country, zipcode",
                           :home_email => "mom@email.com" } }

    mom.each { |key, value| puts "#{key} is #{value}" }

    #puts mom.to_a
  end

  def dad
    dad = { "Dad" => { :home_phone => "000-000-0000",
                          :mobile_phone => "555-555-5555",
                          :home_address => "123 Main st., Hometown, State, Country, zipcode",
                          :home_email => "dad@email.com" } }
    dad.to_a
    dad.each { |key, value| puts "#{key} is #{value}" }
  end

  def bro
    bro = { "Bro" => { :mobile_phone => "555-555-5555",
                           :home_email => "brofish@email.com"} }

    bro.to_a
    bro.each { |key, value| puts "#{key} is #{value}" }
  end

  def cuz
    cuz = { "Cuz" => { :mobile_phone => "555-555-5555" } }

    cuz.to_a
    cuz.each { |key, value| puts "#{key} is #{value}" }
  end
end

the_family = FamilyInfo.new
#puts the_family.fam_symbols
#puts the_family.fam_symbols.to_a
#puts the_family.fam_symbols.to_s
the_family.family
#the_family.mom.to_a
#the_family.mom.to_s
#the_family.mom.inspect
#the_family.bro
#the_family.dad
#the_family.cuz
