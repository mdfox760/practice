# I don't know how to use the gem 'money' with this!
require 'money'
Money.use_i18n = false # You must include this or it'll throw an error

class Account

  attr_accessor :name, :balance

  class << self

    def create_for name
      @accounts ||= []
      @accounts << Account.new(name)
    end

    def find_for name
      @accounts.find { |account| account.name == name }
    end
  end

  def initialize name
    @balance = 0
    @name = name
  end

  def deposit amount
    @balance += amount # Problem here with money gem.
  end

  def withdraw amount
    @balance -= amount
  end
end

Account.create_for "Bob"
Account.find_for "Bob"
Account.create_for "Kyle"
Account.find_for "Kyle"
Account.create_for "Matt"

account = Account.find_for "Bob"
account2 = Account.find_for "Kyle"
account3 = Account.find_for "Matt"

account.balance = Money.new(5000000)
account2.balance = Money.new(20000)
account3.balance = Money.new(8018) # Should return 80.18
puts account3.balance
# Returns in `<main>': undefined method `[]=' for nil:NilClass (NoMethodError)
# account3[:name] = "Matt" account3[:balance] = 40.00

# Another problem here with money gem.
puts "#{account.name} Deposit: $" + account.deposit(20000)
puts "#{account.name} Withdraw: $" + account.withdraw(5000).to_s
puts "#{account.name} Balance: $" + account.balance.to_s

puts "#{account2.name} Deposit: $" + account2.deposit(20000).to_s
puts "#{account2.name} Withdraw: $" + account2.withdraw(5000).to_s
puts "#{account2.name} Balance: $" + account2.balance.to_s

# Output returns strange float for balance which is why I want to use money gem.
# Must use to_s
puts "#{account3.name} Deposit: $" + account3.deposit(4020).to_s
puts "#{account3.name} Withdraw: $" + account3.withdraw(5000).to_s
puts "#{account3.name} Balance: $" + account3.balance
