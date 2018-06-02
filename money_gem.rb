require 'money'
Money.use_i18n = false # You must include this or it'll throw an error

five_bucks = Money.new(500, "USD")
five_bucks.currency
puts "$" + five_bucks.to_s
