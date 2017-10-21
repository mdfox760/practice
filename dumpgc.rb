# Uses 'gamecharacters.rb' to test marshalling.
# Saves a serialized version of the object in the gamecharacters.rb class to disk.
require_relative 'gamecharacters'
gc = GameCharacter.new(120, 'Magician', ['spells', 'invisibility'])
puts "#{gc.power} #{gc.type}"
gc.weapons.each do |w|
  puts w
end

File.open('game', 'w+') do |f|
  Marshal.dump(gc, f)
end
