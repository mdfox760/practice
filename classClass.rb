class Class
  alias old_new new
  def new(*args)
    print "Creating a new ", self.name, "\n"
    old_new(*args)
  end
end

class Name
  def my_name
    puts "Matt Fox"
  end
end

n = Name.new
my_name = "Matt Fox"
puts n.my_name
