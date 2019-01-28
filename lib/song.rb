class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    file = Song.new_by_filename(file_name)
    song = file.artist
  end

end
