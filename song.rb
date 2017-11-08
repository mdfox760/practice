class Song
  def initialize(name, artist)
    @name = name
    @artist = artist
  end

  def name 
    @name
  end

  def artist
    @artist
  end
end

song = Song.new("Happy", "Feelgood Joe")
puts song.name
puts song.artist

class Song
  def initalize(name, artist)
    @name = name
    @artist = artist
  end

  attr_accessor :name, :artist
end

song = Song.new("Sad", "Sad Joe")
puts song.name
puts song.artist
