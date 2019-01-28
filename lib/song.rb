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
  end

end
