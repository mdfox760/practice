
class Plant
  attr_accessor :fall, :winter, :spring, :summer

  def initialize
    @fall
    @winter
    @spring
    @summer
  end

  def fall
    @fall

    plants = [ "Asparagus", "Broccoli", "Broad beans", "Brussles sprouts", "Carrots",
      "Cabbage", "Kale", "Kohlrabi", "Leeks", "Lettuce", "Radishes", "Rutabaga", "Shallots",
      "Spinach", "Swiss Chard", "Beets", "Green Beans", "Turnips", "Celeriac", "Collards",
      "Green Onions", "Onions", "Parsnips", "Cauliflower", "Peas", "Pumpkins", "Garlic",
      "Arugula", "Mustard", "Pak Choi", "Chives", "Celery", "Frisee", "Bok Choi", "Radish",
      "Mibuna", "Edible Flowers" ]

    puts "******"
    puts "Tips for fall planting: "
    tips = "\nStart seeds in trays and allow to germinate. Seedlings need two 'true' leaves \n before planting in the ground."
    puts tips
    puts ( "\nPlants for planting in the fall." )
    puts "******"
    line_width = 80
    puts plants.sort.each_slice(5) { |x| puts x.join " " }
  end

  def winter
    @winter
    puts "******"
    puts "Tips for winter harvest and replanting."
    tips = "\nHarvesting microgreens from the fall planting mostly. Replanting microgreens for consistant
            crop. Preparing beds for spring planting."
  end

  def spring
    @spring
    puts "******"
    puts "Tips for spring planting."
    tips = "\nThe fall crops keeps going so just keep replanting. Fall crops are year around crops."
    puts tips
    plants = [ "Tomato", "Eggplant", "Corn", "Cucumber", "Melons", "Peppers", "Sweet Potato",
               "Herbs", "Okra" ]
    puts "******"
    puts "Plant these in early spring and keep replanting every four weeks to extend the harvest."
    plants.sort
    plants.each_slice(5) { |x| puts x.join " " }
  end

  def summer
    @summer
    puts "******"
    puts "Tips for summer planting."
    tips = "\nSummer planting is the same as spring. Weed, replant, harvest, repeat."
  end

end

p = Plant.new

puts p.fall
puts p.winter
puts p.spring
puts p.summer
