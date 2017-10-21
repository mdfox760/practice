# Uses 'gamecharacters' to test marshalling.
# reads the info in to be used whenever.
require_relative 'gamecharacters'
File.open('game') do |f|
  @gc = Marshal.load(f)
end

puts "#{@gc.power} #{@gc.type}"
@gc.weapons.each do |w|
  puts w
end
