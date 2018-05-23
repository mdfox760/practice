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

# This part is from rubymonk.com 
module WarmUp
  def push_ups
    "Phew, I need a break!"
  end
end

class Gym
  include WarmUp

  def preacher_curls
    "I'm building my biceps."
  end
end

class Dojo
  include WarmUp

  def tai_kyo_kyu
    "Look at my stance."
  end
end

puts Gym.new.push_ups
puts Dojo.new.push_ups
