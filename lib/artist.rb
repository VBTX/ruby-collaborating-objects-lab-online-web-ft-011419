class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if (@@all.name.nil?)
      Artist.new(name)
    else
      @@all.name = name
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
