class Fruit
  attr_accessor :condition

  def kind=(k)
    @kind = k
  end

  def kind
    @kind
  end

  def time_passes
    @condition = "rotting"
  end

  def inspect
    "A fruit of the #{@kind} variety." +
    " A #{@condition} #{@kind}."
  end

end

f = Fruit.new

f.kind = "pear"
f.time_passes

puts f.inspect
