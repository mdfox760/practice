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
    @balance += amount
  end

  def withdraw amount
    @balance -= amount
  end
end

Account.create_for "Bob"
Account.find_for "Bob"
Account.create_for "Kyle"
Account.find_for "Kyle"

account = Account.find_for "Bob"
account2 = Account.find_for "Kyle"
account.balance = 50000
account2.balance = 200

puts "#{account.name} Deposit: $" + account.deposit(200).to_s
puts "#{account.name} Withdraw: $" + account.withdraw(50).to_s
puts "#{account.name} Balance: $" + account.balance.to_s

puts "#{account2.name} Deposit: $" + account2.deposit(200).to_s
puts "#{account2.name} Withdraw: $" + account2.withdraw(50).to_s
puts "#{account2.name} Balance: $" + account2.balance.to_s
