class Bank
  attr_accessor :number, :name, :balance

  def initialize(number, name, balance)
    @number = "23456789"
    @name = "FoxBank"
    @balance = "50,000,000"
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

class NewBankAccount < Bank
  attr_accessor :account, :name, :address, :phone, :balance

  def initialize(account, address, balance, initial_deposit, name, phone)
    @account = account
    @address = address
    @initial_deposit
    @name = name
    @phone = phone
    @balance = balance

    puts super(number, name, balance)
  end

  def initial_deposit
    @initial_deposit
  end

  def set_account(account)
    @account = account
  end

  def get_account
    @account
  end

  def set_customer_name(name)
    @name = name
  end

  def get_customer_name
    @name
  end

  def set_customer_address(address)
    @address = address
  end

  def get_customer_address
    @address
  end

  def set_customer_phone(phone)
    @phone = phone
  end

  def get_customer_phone
    @phone
  end

  def set_opening_balance(balance)
    @balance = balance
  end

  def get_account_balance
    "$" + @balance
  end

  def test_new_account
    puts "New account opening!"
  end
end

new_bank = Bank.new("23456789", "FoxBank", "500,000,000")
nba = NewBankAccount.new("987654", "Matt", "123 Main", "123-555-5555", "250,000")

puts new_bank.number
puts new_bank.name
puts new_bank.test_method
puts nba.test_new_account
puts nba.get_customer_name
puts nba.get_account_balance
