class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all<<self
  end

  def self.find_or_create_by_name(name)
    if (self.artist.name.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
