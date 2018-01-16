class Me
  def initialize
    @name = "Matt Fox"
    @home_address = "Oceanside"
    @work_address = "Oceanside"
    @email = "me@email.com"
    @phone = "000-000-0000"
  end

  def name
    @name
  end

  def phone
    @phone
  end

  def email
    @email
  end

  def home_address
    @home_address
  end

  def work_address
    @work_address
  end
end

m = Me.new

puts m.inspect
puts "Name: " + m.name
puts "Email: " + m.email
puts "Phone: " + m.phone
puts "Home address: " + m.home_address
puts "Work address: " + m.work_address
