# Lambdas are slow.
l = lambda { "Do or do not" }
puts l.call

# Lambdas take parameters by surrounding them with pipes.

yoda = lambda do |string|
  if string == "try"
    return "There's no such thing as try"
  else
    return "Do or do not."
  end
end
puts yoda.call("try")
puts yoda.call('Please me')

# Increment is a Proc class
Increment = lambda { |number| number + 1 }
puts Increment.call(1)
puts Increment.call(-1)
puts Increment.call(1000)
