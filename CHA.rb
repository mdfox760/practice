
class Contact

  def names

    phone = { :phone => "555-555-5555" }
    phone2 = { :phone2 => "555-555-5556" }
    worker_phone = { :worker_phone => "555-555-5557"}

    people = [ "John Jones", "Fred Flintstone", "Sammy Silk", phone ] + [ "Charles Camp", "Lori Lode", phone2 ]
    work_people = [ "Pete Polk", "Rita Rudd", "Angie Apple", worker_phone ]

    puts "Here are some people listed : "

    people.each do |p|
      puts p.to_s
    end

    work_people.each do |wp|
      puts wp.to_s
    end

  end

  def phones
    phone = { :phone => "555-555-5555" }
    work_phone = { :work_phone => "555-555-5556" }
    phone2 = { :phone2 => "555-555-5555" }
    work_phone2 = { :work_phone2 => "555-555-5556" }

    puts "Here are some phones listed : "

    phone.each do |ph|
      puts ph.to_s
    end

    work_phone.each do |wph|
      puts wph.to_s
    end

    phone2.each do |ph2|
      puts ph2.to_s
    end

    work_phone2.each do |wph2|
      puts wph2.to_s
    end

  end

  def addresses
    address = { :street => "123 Main st.", :city => "Hometown", :zipcode => "00000", :state => "CA", :country => "US" }
    work_address = { :work_street => "123 Main st.", :work_city => "worktown", :work_zipcode => "00000", :work_state => "CA",
     :work_country => "US"}

    address2 = { :street2 => "23 Baker rd.", :city => "London", :zipcode => "00000", :state => "LondonTown",
       :country => "UK" }

    puts "Here are some addresses listed : "

    address.each do |a|
      puts a.to_s
    end

    work_address.each do |wa|
      puts wa.to_s
    end

    address2.each do |a2|
      puts a2.to_s
    end
  end

  def emails
    email = { :email => "sample@email.com" }
    work_email = { :work_email => "work_email@email.com" }
    email2 = { :email2 => "sample2@email.com" }
    work_email2 = { :work_email2 => "work_email2@email.com" }
    puts "Here are some emails listed : "

    email.each do |e|
      puts e.to_s
    end

    work_email.each do |we|
      puts we.to_s
    end

    email2.each do |e2|
      puts e2.to_s
    end

    work_email2.each do |we2|
      puts we2.to_s
    end
  end

end

contact = Contact.new()

puts contact.names.to_s
puts contact.phones.to_s
puts contact.addresses.to_s
puts contact.emails.to_s
