class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    file = Song.new_by_filename
    song = file.artist
  end

end
