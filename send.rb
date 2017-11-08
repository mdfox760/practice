class Klass
  def hello(string)
    "Hello #{string}"
  end
end
k = Klass.new
k.send :hello, "gentle readers."
puts k.send :hello, "gentle readers."
