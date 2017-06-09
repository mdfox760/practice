# This one is like your scripts with ARGV
def print_two(*args)
  arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# OK, that *args is actually pointless, we can just do this
def print_two_again(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# This just takes one arguement
def print_one(arg1)
  puts "arg1: #{arg1}"
end

def print_none()
  puts "I got nothing."
end

print_two("Matt", "Fox")
print_two_again("Matt", "Fox")
print_one("First!")
print_none()
