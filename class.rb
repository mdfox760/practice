class Me
  def initialize
    @name = "Matt 'Action' Fox"
    @address = "Temecula"
    @address2 = "Oceanside"
    @email = "mdfox760@email.com"
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

  def address
    @address
  end

  def address2
    @address2
  end
end

m = Me.new

puts m.inspect
puts m.name
puts m.email
puts m.phone
puts m.address
puts m.address2
