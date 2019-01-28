class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist=(name)
    if self.artist == false
      self.artist = Artist.new(name)
    else
      self.artist = name
    end
  end

end
