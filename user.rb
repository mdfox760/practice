class User
  attr_accessor :first_name, :last_name, :full_name, :email

  def initialize
    @first_name
    @last_name
    @full_name = full_name
    @email = email
  end

  def email
    @email
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def full_name
    @full_name
  end

  def to_s
    puts "Name: #{@full_name} Email: #{@email}"
  end

  def inspect
    "User: #{@full_name} at #{@email}."
  end

end

user = User.new
user = {}
user[:full_name] = "Matt Fox"
user[:email] = "matt@email.com"
user[:first_name] = "Matt"
user[:last_name] = "Fox"
user2 = User.new
user2 = {}
user2[:full_name] = "Lydia Banana"
user2[:email] = "lydia@email.com"

puts user.each {|key, value| puts "User Info: #{key}: \n#{value}"}
puts user2.each {|k, v| puts "User2 Info: #{k}: #{v}"}
