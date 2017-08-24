class Me
  def initialize
    @name = "Matt 'Action' Fox"
    @address = "42200 Moraga rd., Temecula, CA. 92591"
    @address2 = "130 Loma Alta dr., Oceanside, CA. 92054"
    @email = "mdfox760@gmail.com"
    @phone = "951-395-3365"
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
