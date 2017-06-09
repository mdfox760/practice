=begin
  Makes a class that uses hashes, arrays, blocks and symbols together. Trying to put
  the stuff I've learned so far into a single program. Change the code at the bottom
  as you wish.
=end

class Contact

  def names

    #worker_phone = { :worker_phone => "951-555-5555"}
    family = { "Kris" => "home_phone = 555-555-5555 home_address = 123 Main st., Hometown, State, Country, zipcode home_email = me@email.com",
                  "Mom" => "home_phone = 555-555-5555 home_address = 123 Main st., Hometown, State, Country, zipcode home_email = she@email.com",
                  "Dad" => "mobile_phone = 555-555-5555 home_phone = 000-000-0000 home_address = 123 Main st., Hometown, State, Country, zipcode home_email = mr@email.com",
                  "Bro" => "mobile_phone = 555-555-5555 home_email = bro@email.com",
                  "Cuz" => "mobile_phone = 555-555-5555",
                  "Me" => "mobile_phone = 555-555-5555 home_email = me@email.com home_address = 123 Main st., Hometown, State, Country, zipcode" }

    puts "Here is the family listed : ".upcase

    #family.each { |key, value| puts "#{key} contact info is #{value}" }

    family.each do |fam|
      #puts fam.to_a
      puts fam.to_s
    end

  end

  def phones
    phone = { :phone => "555-555-5555" }
    work_phone = { :work_phone => "555-555-5556" }

    #puts phone.to_s + work_phone.to_s
  end

  def addresses
    home_address = { :street => "123 Main st.", 
                :city => "Hometown", 
                :zipcode => "00000", 
                :state => "CA", 
                :country => "US" }

    work_address = { :work_street => "123 Main st.", 
                     :work_city => "Worktown", 
                     :work_zipcode => "00000", 
                     :work_state => "CA",
                     :work_country => "US"}

     puts "Here are some addresses listed : "
     home_address.each {|x| puts(x)}
     work_address.each {|w| puts(w)}
  end

  def emails
    email = { :email => "me@email.com" }
    work_email = { :work_email => "work_email@email.com" }

    #puts "Here are some emails listed : "

    puts email.to_s + work_email.to_s
  end

end

contact = Contact.new()
contact.emails

