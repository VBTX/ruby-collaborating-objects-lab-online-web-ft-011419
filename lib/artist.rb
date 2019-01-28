class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  def print_songs
    @songs.each do |key, value|
      if @songs[key] == @name
        puts value
      end
    end
  end
end
