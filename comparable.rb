# The Comparable mixin is used by classes whose objects may be ordered. The
# class must define the <=> operator, which compares the receiver against
# another object, returning -1, 0, or +1 depending on whether the receiver is
# less than, equal to, or greater than the other object. If the other object is
# not comparable then the <=> operator should return nil. Comparable uses <=> to
# implement the conventional comparison operators (<, <=, ==, >=, and >) and the
# method between?.

class SizeMatters
  include Comparable
  attr :str

  def <=>(other)
    str.size <=> other.str.size
  end

  def initialize(str)
    @str = str
  end

  def inspect
    @str
  end

end

s1 = SizeMatters.new("z")
s2 = SizeMatters.new("YY")
s3 = SizeMatters.new("xxx")
s4 = SizeMatters.new("WWWW")
s5 = SizeMatters.new("VVVVVV")

p s1 < s2 # returns true
p s4.between?(s1, s3) # returns false
p s4.between?(s3, s5) # returns true
p [ s3, s2, s5, s4, s1 ].sort # sorts

3.between?(1, 5)
6.between?(1, 5)
p 'cat'.between?('ant', 'dog')
p 'gnu'.between?('ant', 'dog')

# clamp(min, max) → obj
# Returns min if obj <=> min is less than zero, max if obj <=> max is greater
# than zero and obj otherwise.
p 12.clamp(0, 100) #=> 12
p 523.clamp(0, 100) #=> 100
p -3.123.clamp(0, 100) #=> 0

p 'd'.clamp('a', 'f') #=> 'd'
p 'z'.clamp('a', 'f') #=> 'f'
