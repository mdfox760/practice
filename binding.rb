class Demo
  def initialize(n)
    @secret =n
  end

  def get_binding
    binding
  end

end

k1 = Demo.new(99)
b1 = k1.get_binding
k2 = Demo.new(-3)
b2 = k2.get_binding

puts eval("@secret", b1) # returns 99
puts eval("@secret", b2) # returns -3
puts eval("@secret") # returns nil (blank line)

def get_binding(param)
  binding
end
b = get_binding("hello")
puts b.eval("param") # returns hello
