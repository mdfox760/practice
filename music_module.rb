module Debug
  def whoAmI?
    "#{self.name}: #{self.to_s}"
  end
end

class Phonograph
  include Debug

  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

class EightTrack
  include Debug

  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

ph = Phonograph.new("West End Blues")
et = EightTrack.new("Surrealistic Pillow")
puts ph.whoAmI?
puts et.whoAmI?
puts ph.name
puts et.name
