require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    name = file_name.split(" - ")
    binding.pry
    song = self.new(file_name)
    song
  end

end
