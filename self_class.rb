# Class methods are defined as signleton methods for class objects.
# self inside a singleton method is the object whose singleton method it is.
class S
  def S.x
    puts "Class method of class S."
    puts self
  end
end
S.x
