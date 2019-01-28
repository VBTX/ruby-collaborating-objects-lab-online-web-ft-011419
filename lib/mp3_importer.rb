
require 'pry'
class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
   Dir[@path+"/*.mp3"].map { |file| file.split("/").last } #matches all that
   #begin with the instancw path plus mp3 ending
   binding.pry
  end

  def import
    files.each {|file| Song.new_by_filename(file)}

  end
end
