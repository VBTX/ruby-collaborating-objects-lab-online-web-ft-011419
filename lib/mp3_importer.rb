require 'pry'

class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
   file = @path.split(/\w/|.mp3/)
   binding.pry
  end

  def import
    files.each {|file| Song.new_by_filename(file)}

  end
end
