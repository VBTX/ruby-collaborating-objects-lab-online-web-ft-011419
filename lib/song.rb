require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    name = file_name.split(" - ")[1]
    artist_name = file_name.split(" - ")[0]
    song = self.new(name)
    song.artist_name = artist_name1song.save
  end

  def artist_name=(artist_name1)
    self.artist.find_or_create_by_name(artist_name1)

end
