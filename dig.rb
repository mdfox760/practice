require 'ostruct'

class Country
  def self.read
    { name: "Country Bar" }
  end
end

class Address
  def self.read
    { country: Country.read }
  end
end

class Person < OpenStruct
  def self.read
    { address: Address.read }
  end
end

# Querying a person's name:
person = Person.read
puts person.dig(:address, :country, :name) # => "Country Bar"
