class Fruit
  def set_kind(k)
    @kind = k
  end

  def get_kind
    @kind
  end

  def inspect
    "A fruit of the #{@kind} variety"
  end
end

f = Fruit.new

f.set_kind("peach")
f.get_kind
f


puts f.get_kind
p f.inspect # p is the same as puts
puts f
