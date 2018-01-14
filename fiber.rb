# Fiber is like a thread. It will not run automatically. It must be asked to run
# using the Fiber#resume method. The code running inside the fiber can give up
# control by calling Fiber.yield in which case it yields control back to the
# caller. They can be paused and resumed. Replaces callcc.
fiber = Fiber.new do
  Fiber.yield 1
  2 # number of calls, I believe.
end
puts fiber.resume
puts fiber.resume
# puts fiber.resume # This will produce a FiberError because it's dead and the
# next example wouldn't run if it wasn't commented out.

# Another example
f = Fiber.new do |first|
  second = Fiber.yield first + 2
end

puts f.resume 10
puts f.resume 14
# puts f.resume 18

fiber1 = Fiber.new do
  puts "In Fiber 1"
  Fiber.yield
end

fiber2 = Fiber.new do
  puts "In Fiber 2"
  fiber1.transfer # returns undefined method 'transfer' for line 23
  puts "Never see this message"
end

fiber3 = Fiber.new do
  puts "In Fiber 3"
end

fiber2.resume
fiber3.resume
