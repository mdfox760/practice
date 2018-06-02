
require 'money'
Money.use_i18n = false # You must include this or it'll throw an error

# A gem test. Gem returns values in cents.
puts "Gem test:"
money = Money.new(1000, "USD")
puts money # returns 10.00
puts money.format(:with_currency => true) # returns $10.00 USD
puts money.format(:symbol => true) # returns "$10.00"
puts money.to_money # returns 10.00
big_money = Money.new(100000000)
puts big_money.format(:no_cents => true) # returns $1,000,000
puts money.currency # returns USD
puts long_money = Money.new(14051) 
puts long_money.format(:dollars) # Shows dollar sign.

puts "Gem works"
