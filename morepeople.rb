=begin
Using a variable that calls a hashed symbol in an array
then looping through the array that outputs as a list with the phone
number at the end
=end

def more_people

  phone = { :phone => "555-555-5555" }
  phone2 = { :phone2 => "760-555-5555" }

  more_people = [ "john", "fred", "sam", phone ] + [ "charles", "lori", phone2 ]

  puts "Here are some names listed by phone number : "

  more_people.each do |p|
    puts p.to_s
  end

end

more_people.to_s
