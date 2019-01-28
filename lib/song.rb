require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    name = file_name.split(" - ")[1]
    artist = file_name.split(" - ")[0]
    song = self.new(name)
    artist_ob = Artist.new(artist)
    song.artist = artist_ob
  end

end
