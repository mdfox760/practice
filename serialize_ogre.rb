require 'yaml'

class Ogre
  def initialize(strength, speed)
    @strength = strength
    @speed = speed
  end

  def self.deserialize(yaml_string)
    YAML::load(yaml_string)
  end

  def serialize
    YAML::dump(self)
  end

  def to_s
    "Ogre: [strength = #{@strength}, speed = #{@speed}]"
  end
end

wendigo = Ogre.new(47, 3)
yaml = wendigo.serialize
puts "The yaml looks like this:"
p yaml
puts "It's just a boring old string: #{yaml.class}"
puts "and it's easy to change back: #{Ogre.deserialize(yaml)}"
puts

shrek = Ogre.new(62, 12)
fiona = Ogre.new(66, 37)
ogres = [shrek, fiona]
puts "We can even serialize arrays. They are just another object. #{ogres}"
