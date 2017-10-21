# Add a write_size method to the String class.
# Get a list of all the methods from the standard String class that begin with 'wr'.
String.methods.grep /^wr/ # []

class String
  def write_size
    self.size
  end
end
size_writer = "Tell me my size!"
puts size_writer.write_size
