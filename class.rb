class Me
  def initialize
    @name = "Matt 'Action' Fox"
    @address = "42200 Moraga rd., Temecula, CA. 92591"
    @phone = "951-395-3365"
  end

  def name
    @name
  end

  def phone
    @phone
  end
  
  def address
    @address
  end
end

m = Me.new

puts m.inspect
puts m.name
puts m.phone
puts m.address
