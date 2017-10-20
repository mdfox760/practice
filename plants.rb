# require "minitest/autorun"

class Plant
  attr_accessor :fall, :winter, :spring, :summer

  def initialize
    @fall
    @winter
    @spring
    @summer
  end

  def care
    care = [
    asparagus = { "Asparagus" => { :care => "Perennial bulb that may last 20 years. May take 2 or 3 years to get started and produce. Dig trenches of about 6 inches wide and 6 to 12 inches deep. Bed needs good drainage. Keep 15 to 18 inches apart.",
                                   :notes => "Green stalks. Grown from seed is different." } },

    broccoli = { "Broccoli" => { :care => "Grows well. Harvest before flowering.",
                                 :notes => "Cool weather crop ( prefers 64F to 73F ). Produces a ton of food." } },

    broad_beans = { "Broad Beans" => { :care => "Hardy plant, but insects can be a problem. Harvest young beans.",
                                       :notes => "AKA: Fava beans. Flowering plant." } },

    brussles = { "Brussles sprouts" => {  :care => "Cool weather plant. Harvest 90 to 180 days after planting. ",
                                          :notes =>  "Produces up to 3lbs per stalk. Grows well in California. I'm impartial to the taste. Meh. Dad doesn't like them.."} },

    carrots = { "Carrots" => {  :care => "Full sun is best but can tolerate some shade. Prefers deep, loose, well drained soil. Keep soil moist. Plant with tomato, radish, leeks, onions and rosemary.",
                                :notes =>  "Grown from seed and may take up to 120 to mature. If left to flower, carrots attract predatory wasps that kill garden pests. " } },

    cabbage = { "Cabbage" => { :care => "Not bad.",
                               :notes =>  "Dad doesn't like it too much. I don't mind cabbage." } },

    dill = { "Dill" => { :care => "Cool weather crop. Full sun is best.",
                               :notes =>  "Leaves and seeds are edible. Leaf growth stops when plant flowers. For seeds, let the plant flower, gather the flowers and seed pods and place them in a bag and shake loose the seeds. Then seperate the seeds from the chaff." } },

    kale = { "Kale" => { :care => "Green leafy vegetable. Grows well in cool weather.",
                         :notes =>  "AKA: Leaf Cabbage. Very large plant. Crop of the day." } },

    kohlrabi = { "Kohlrabi" => { :care => "Harvest young. Matures in 55 to 60 days.",
                                 :notes => "Type of cabbage. Can produce flowers. Leafs can be used like collard greens and kale. Roots are edible. They can grow very large." } },

    leeks = { "Leeks" => { :care => "Hardy plant. Just put them in the ground. Prefers loose, well drained soil. Harvest from the size of a pencil to large.",
                           :notes => "An onion with subtle flavor. Grow well from seed." } },

    lettuce = { "Lettuce" => { :care => "Prefers cool weather to prevent flowering. Full sun is best. Must be replanted often to extend harvest. Each plant may be harvested up to four or five times before loss of production.",
                               :notes => "Lot's of different types." } },

    radishes = { "Radishes" => { :care => "Stick in ground.",
                                 :notes => "Nasty." } },

    rutabaga = { "Rutabaga" => { :care => "Grow three to six inches apart.",
                                 :notes => "Root crop. Swedish turnip. Kind of a cross between a cabbage and a turnip." } },

    shallots = { "Shallots" => { :care => "Plant clove with just the tip above ground. Prefer loose, well drained soil. Full sun but some shade is OK. Plants are ready to harvest when the leaves turn brown.",
                                 :notes => "Grown from bulbs. Cure on a wire for a month to mellow the flavor and increase storage life. Keep they dry and out of the sun while they dry. A subtle onion flavor." } },

    spinach = { "Spinach" => { :care => "Stick in ground. Grows like lettuce.",
                               :notes => "Green leafy vegetable that like cool weather. Roots can be easily damaged." } },

    swiss_chard = {"Swiss Chard" => { :care => "Cool weather plant. Easy to grow. Grows like lettuce.",
                                      :notes => "Green leafy vegetable grows between 1 to 3 feet tall." } },

    beets = { "Beets" => { :care => "Stick in ground.",
                           :notes => "Russian favorite. Blood red soup is notable." } },

    green_beans = { "Green Beans" => { :care => "Needs a trellis system to climb.",
                                       :notes => "Harvest frequently." } },

    turnips = { "Turnips" => { :care => "Stick in ground.",
                               :notes => "Don't know much about them." } },

    celeriac = { "Celeriac" => { :care => "Stick in ground",
                                 :notes => "I wonder if this is celery." } },

    collards = { "Collards" => { :care => "Grow like lettuce or spinach.",
                                 :notes => "Greens with a spicy flavor." } },

    green_onions = { "Green Onions" => { :care => "Plant.",
                                         :notes => "A favorite." } },

    onions = { "Onions" => { :care => "Plant.",
                             :notes => "Root crop." } },

    oregeno = { "Oregno" => { :care => "Hardy plant. Likes the full sun.",
                               :notes =>  "Leaves can be harvested while plant grows. Self seeding." } },

    parsnips = { "Parsnips" => { :care => "Plant",
                                 :notes => "Don't know it." } },

    cauliflower = { "Cauliflower" => { :care => "Plant.",
                                       :notes => "Not my favorite." } },

    peas = { "Peas" => { :care => "Needs a trellis.",
                         :notes => "In a pod." } },

    pumpkins = { "Pumpkins" => { :care => "Plant",
                                 :notes => "Just a few should be planted. They get huge." } },

    garlic = { "Garlic" => { :care => "Plant.",
                             :notes => "Hardy root crop to be harvested in the spring or early summer. Can be grown close together." } },

    arugula = { "Arugula" => { :care => "Plant.",
                               :notes => "A spicy lettuce." } },

    mustard = { "Mustard" => { :care => "Plant.",
                               :notes => "Spicy goodness." } },

    pak_choi = { "Pak Choi" => { :care => "Plant.",
                                 :notes => "I think this is the same as Bok Choi." } },

    chives = { "Chives" => { :care => "Needs well drained, moist soil.",
                             :notes => "Flowering perennial bulbs. Keeps insects away. Old looking chives can be cut back to 2-5 cm. Great for potato." } },

    celery = { "Celery" => { :care => "Plant.",
                             :notes => "Grows in stalks." } },

    frisee = { "Frisee" => { :care => "Plant.",
                             :notes => "I don't know this one." } },

    bok_choi = { "Bok Choi" => { :care => "Plant.",
                                 :notes => "Tasty green leafy vegetable. May be harvested young or older." } },

    mibuna = { "Mibuna" => { :care => "Plant",
                             :notes => "I don't have a clue what type of vegetable this could be." } },

    edible_flowers = { "Edible Flowers" => { :care => "Like a flower, water a few times a week but not too soggy.",
                                             :notes => "Many different varieties to add color to the plate." } },

    jalapeno_peppers = { "Jalapeno Peppers" => { :care => "Plant.",
                                                 :notes => "Loves hot weather." } },

    tomato = { "Tomato" => { :care => "Plant in spring. Keep soil moist.",
                             :notes => "Grows best in full sun." } },

    sweet_peppers = { "Sweet Peppers" => { :care => "Plant.",
                                           :notes => "Loves hot weather." } },

    summer_squash = { "Summer Squash" => { :care => "Plant.",
                                           :notes => "Throws out runners. Needs space." } },

    winter_squash = { "Winter Squash" => { :care => "Plant.",
                                           :notes => "Throws out runners. Needs space." } } ]

    arugula.each { |key, value| puts "#{key}: #{value}" }
    asparagus.each { |key, value| puts "#{key}: #{value}" }
    beets.each { |key, value| puts "#{key}: #{value}" }
    bok_choi.each { |key, value| puts "#{key}: #{value}" }
    broad_beans.each { |key, value| puts "#{key}: #{value}" }
    broccoli.each { |key, value| puts "#{key}: #{value}" }
    brussles.each { |key, value| puts "#{key}: #{value}" }
    cabbage.each { |key, value| puts "#{key}: #{value}" }
    carrots.each { |key, value| puts "#{key}: #{value}" }
    cauliflower.each { |key, value| puts "#{key}: #{value}" }
    celeriac.each { |key, value| puts "#{key}: #{value}" }
    celery.each { |key, value| puts "#{key}: #{value}" }
    chives.each { |key, value| puts "#{key}: #{value}" }
    collards.each { |key, value| puts "#{key}: #{value}" }
    dill.each { |key, value| puts "#{key}: #{value}" }
    edible_flowers.each { |key, value| puts "#{key}: #{value}" }
    frisee.each { |key, value| puts "#{key}: #{value}" }
    garlic.each { |key, value| puts "#{key}: #{value}" }
    green_beans.each { |key, value| puts "#{key}: #{value}" }
    green_onions.each { |key, value| puts "#{key}: #{value}" }
    jalapeno_peppers.each { |key, value| puts "#{key}: #{value}" }
    kale.each { |key, value| puts "#{key}: #{value}" }
    kohlrabi.each { |key, value| puts "#{key}: #{value}" }
    leeks.each { |key, value| puts "#{key}: #{value}" }
    lettuce.each { |key, value| puts "#{key}: #{value}" }
    mibuna.each { |key, value| puts "#{key}: #{value}" }
    mustard.each { |key, value| puts "#{key}: #{value}" }
    onions.each { |key, value| puts "#{key}: #{value}" }
    oregeno.each { |key, value| puts "#{key}: #{value}" }
    pak_choi.each { |key, value| puts "#{key}: #{value}" }
    parsnips.each { |key, value| puts "#{key}: #{value}" }
    peas.each { |key, value| puts "#{key}: #{value}" }
    pumpkins.each { |key, value| puts "#{key}: #{value}" }
    radishes.each { |key, value| puts "#{key}: #{value}" }
    rutabaga.each { |key, value| puts "#{key}: #{value}" }
    shallots.each { |key, value| puts "#{key}: #{value}" }
    spinach.each { |key, value| puts "#{key}: #{value}" }
    summer_squash.each { |key, value| puts "#{key}: #{value}" }
    sweet_peppers.each { |key, value| puts "#{key}: #{value}" }
    swiss_chard.each { |key, value| puts "#{key}: #{value}" }
    tomato.each { |key, value| puts "#{key}: #{value}" }
    turnips.each { |key, value| puts "#{key}: #{value}" }
    winter_squash.each { |key, value| puts "#{key}: #{value}" }
  #  puts care.to_s
  end

  def fall
    @fall

    plants = [ "Asparagus", "Broccoli", "Broad Beans", "Brussles sprouts", "Carrots",
      "Cabbage", "Kale", "Kohlrabi", "Leeks", "Lettuce", "Radishes", "Rutabaga", "Shallots",
      "Spinach", "Swiss Chard", "Beets", "Green Beans", "Turnips", "Celeriac", "Collards",
      "Green Onions", "Onions", "Parsnips", "Cauliflower", "Peas", "Pumpkins", "Garlic",
      "Arugula", "Mustard", "Pak Choi", "Chives", "Celery", "Frisee", "Bok Choi", "Radish",
      "Mibuna", "Edible Flowers" ]

    puts "******"
    puts "Tips for fall planting: "
    tips = "\nStart seeds in trays and allow to germinate. Seedlings need two 'true' leaves before planting in the ground."
    puts tips
    puts ( "\nPlants for planting in the fall." )
    puts "******"
    plants.sort
    plants.each_slice(5) { |x| puts x.join " " }
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

  def inspect
    "An inspect method is in the Plant class."
  end



end

# class TestPlant < Minitest::Test
#  def setup
#    @fall = Plant.new
#  end

#  def test_exist
#    assert_equal "Yes, fall is there.", @fall.fall
#  end
# end

p = Plant.new
puts p.care.sort
# puts p.fall
# puts p.winter
# puts p.spring
# puts p.summer
