# Serialize using YAML:

require "yaml"

class A
  def initialize(string, number)
    @string = string
    @number = number
  end

  def to_s
    "In A:\n  #{@string}, #{@number}\n"
  end
end

class B
  def initialize(number, a_object)
    @number = number
    @a_object = a_object
  end

  def to_s
     "In B: #{@number} \n #{@a_object}\n"
  end
end

class C
  def initialize(b_object, a_object)
    @b_object = b_object
    @a_object = a_object
  end

  def to_s
     "In C:\n #{@a_object} #{@b_object}\n"
  end
end

a = A.new("hello world", 5)
b = B.new(7, a)
c = C.new(b, a)

puts c

# Serialize object tree
serialized_object = YAML::dump(c)
puts serialized_object

# To get it back
puts YAML::load(serialized_object)

# Serialize using json

require "json"

class D
  def initialize(string, number)
    @string = string
    @number = number
  end

  def to_s
    "In D:\n #{@string}, #{@number}\n"
  end

  def to_json(*a)
    {
      "json_class" => self.class.name,
      "data"       => {"string" => @string, "number" => @number }
    }.to_json(*a)
  end

  def self.json_create(o)
    new(o["data"]["string"], o["data"]["number"])
  end
end

d = D.new("Hello World", 5)
json_string = d.to_json
puts json_string
puts JSON.parse(json_string)
