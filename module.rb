# This could be a huge file. It's better to run ri.
module Mod
  include Math
  CONST = 1
  def meth
    # ...
  end
end
puts "Mod.class:"
puts Mod.class
puts "Mod.constants:"
puts Mod.constants
puts "Mod.instance_methods:"
puts Mod.instance_methods

# If you want this to be a regular module, use an uppercase name.
fred = Module.new do
  def meth1
    "Hello"
  end

  def meth2
    "Bye"
  end
end

a = "My string."
puts a.extend(fred)
puts a.meth1
puts a.meth2

module Admin
  autoload :User, 'admin/user'
end
puts "Evaluates if :User in Admin module is defined:"
puts Admin.const_defined?(:User)
