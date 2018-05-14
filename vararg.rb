# variable number of parameters example
# The asterisk is actually taking all arguments you send to the method
# and assigning them to an array named my_string as shown below
# The do end is a Ruby block.
def foo(*my_string)
  my_string.inspect
end
puts foo('hello','world')
puts foo()
# The asterisk (called the splat) is taking all arguements you send to
# the method and assigning them to an array called 'mystring'
# The first call results in ['hello', 'world'] written in the first called
# and an empty array on the second call.
