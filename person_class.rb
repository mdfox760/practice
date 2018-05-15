# A Person class with encryption using Digest
require 'digest'

module Encryption
  private

  def encrypt(string)
    Digest::SHA2.hexdigest(string)
  end
end

class Person
  include Encryption

  def initialize(person)
    @person = person
  end

  def password=(password)
    @password = password
  end

  def encrypted_password
    # Digest::SHA2.hexdigest(@password)
    encrypt(@password)
  end

end

person = Person.new("Ada")
person.password = "super secret"
# The code below shows the encrypted password, but not the plain text.
puts person.encrypted_password
# Keeps the private method private by giving NoMethodError
puts person.encrypt("super secret")
