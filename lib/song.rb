class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    song = self.new
    song.name = file_name.split(" - ")[1]
    song.artist = 
    song
  end

end
