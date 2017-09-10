module HealingProperties
  def heal_wounds
    puts "I shall heal myself with my super powers. \n(Time passes). \nVoila! My wounds have healed. Ass kicking time!"
  end
end

class Wolverine
  include HealingProperties
  def kill_something
    puts "Stab and cut. Stab and cut. Die, die, you bastard!"
  end
end

logan = Wolverine.new
logan.kill_something
logan.heal_wounds