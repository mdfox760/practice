# Need to get cust_accounts to autoincrement.
# Have not implemented Account class.
class Bank
  attr_accessor :number, :name, :balance

  def initialize(number, name, balance)
    number = 0
    @number = number += 1
    @name = "FoxBank"
    @balance = 50000000
  end

  def bankRoutingNumber()
    number = "23456789"
    @number = number
  end

  def bankRoutingNumber
    @number
  end

  def bankName()
    name = "FoxBank"
    @name = name
  end

  def bankName
    @name
  end

  def bankBalance(balance)
    starting_balance = "$" + "500,000,000"
    @balance = balance
  end

  def bankBalance
    @balance
  end

  def test_method
    puts "The class Bank is working"
  end
end

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

class NewBankAccount < Bank
  attr_accessor :cust_account, :cust_name, :cust_address, :cust_phone, :cust_balance

  def initialize(cust_account, cust_name, cust_address, cust_phone, cust_balance)

    @cust_account = cust_account
    @cust_address = cust_address
    @cust_name = cust_name
    @cust_phone = cust_phone
    @cust_balance = cust_balance
  end

  def initial_deposit
    @initial_deposit
  end

  def set_cust_account(cust_account)
    @cust_account += 1
  end

  def get_cust_account
    @cust_account
  end

  def set_cust_name(cust_name)
    @cust_name = cust_name
  end

  def get_cust_name
    @cust_name
  end

  def set_cust_address(cust_address)
    @cust_address = cust_address
  end

  def get_cust_address
    @cust_address
  end

  def set_cust_phone(cust_phone)
    @cust_phone = cust_phone
  end

  def get_cust_phone
    @cust_phone
  end

  def set_opening_balance(cust_balance)
    @cust_balance = cust_balance
  end

  def get_cust_account_balance
    "$" + @cust_balance.to_s
  end

  def test_new_account
    puts "New account opening! #{get_cust_account}"
  end
end

new_bank = Bank.new("23456789", "FoxBank", "500,000,000")
nba = NewBankAccount.new(1, "Matt", "123 Main", "123-555-5555", 250000)
nba2 = NewBankAccount.new(2, "Kyle", "124 Main", "456-555-5556", 50000)

puts nba.test_new_account
puts nba.get_cust_name
puts nba.get_cust_account
puts nba.get_cust_account_balance.to_s
puts "****"*3
puts nba2.get_cust_name
puts nba2.get_cust_account
puts nba2.get_cust_account_balance
puts "****"*3
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
