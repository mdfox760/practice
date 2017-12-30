# A lambda is a special Proc object. It's similar to a each statement.
say_something = -> { puts "This is a lambda." }
puts say_something # Returns a proc.

say_something.call # .call is needed to print it out.

# Lambdas can take arguments.
times_two = ->(x) { x * 2 }
puts times_two.call(10)

t = Proc.new { |x, y| puts "I don't care about arguments." }
puts t.call

my_lambda = -> { return 1 }
puts "Lambda result: #{my_lambda.call}"

# This should raise an exception
my_proc = Proc.new { return 5 }
puts "Proc result: #{my_proc.call}"

# procs don't care about correct number of arguments, while lambdas will raise
# an exception.
def call_proc
  puts "Before proc"
  my_proc = Proc.new { return 2 }
  my_proc.call
  puts "After proc"
end
# Prints Before proc but not After proc.
puts call_proc

# Procs keep scope
def a_proc(the_proc)
  count = 500
  the_proc.call
end

count = 1
the_proc = Proc.new { puts count }

p a_proc(the_proc) # Prints 1 and not 500 like you would think.
