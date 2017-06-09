class Song

  @@plays = 0

  def initialize(name, artist, duration, lyrics)
    @name = name
    @artist = artist
    @duration = duration
    @lyrics = lyrics
    @plays = 0
  end

  def name
    @name
  end

  def artist
    @artist
  end

  def duration
    @duration
  end

  def duration_in_minutes
    # force floating point
    @duration/60.0   
  end

  def duration_in_minutes=(value)
    @duration = (value*60).to_i
  end

  def lyrics
    @lyrics
  end

  def play
    @plays += 1
    @@plays += 1
    "#{@name} song: #{@plays} plays. Total jukebox #{@@plays} plays."
  end

  def sing_me_a_song()
    @lyrics.each { |line| puts line }
  end

end

s = Song.new("Happy", "Paul Peterson", 400, ["I'm a happy, happy guy.", "I drink all day and I drink all night.", "I just love a good glass of rye."])

happy_bday = Song.new("Happy Birthday Remix", "Zed Shaw", 60, ["Happy birthday to you", "I don't want to get sued", "So I'll stop right there"])

bulls_on_parade = Song.new("Bulls On Parade", "A rap group", 240, ["They rally around tha family", "With pockets full of shells"])

puts "---" * 10
#This prints the lyrics
happy_bday.sing_me_a_song()
puts "---" * 10

puts "\nHere is another song!"
bulls_on_parade.sing_me_a_song()
puts "---" * 10

puts "\nHere is another song!"
s.sing_me_a_song()

#This puts the object
puts s
puts happy_bday
puts bulls_on_parade

#This puts individual calls
puts s.name
puts bulls_on_parade.artist
puts bulls_on_parade.duration_in_minutes

#Check to see play count
puts bulls_on_parade.play
puts happy_bday.play
puts s.play
puts s.play

