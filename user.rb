class User
  attr_accessor :full_name, :email

  def initialize
    @full_name = full_name
    @email = email
  end

  def self.create(params)
    @full_name = params[:full_name]
    @email = params[:email]
  end

  def email
    @email
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
user[:email] = "mdfox@email.com"

user2 = User.new
user2 = {}
user2[:full_name] = "Lydia Villez"
user2[:email] = "lydz@email.com"

# puts user.inspect
# puts user2.inspect
puts user.each {|key, value| puts "User Info: \n#{value}"}
puts user2
