class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist=(artist)
    if self.artist.nil?
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

end
