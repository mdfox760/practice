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

# Both deposit and withdraw methods don't work. Fix it.
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
account.balance = "50,000"
account2.balance = "200"
puts account.name
puts account.balance
puts account2.name
puts account2.balance
