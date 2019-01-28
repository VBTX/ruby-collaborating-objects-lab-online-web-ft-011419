class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
  end

  def import(filename)
    song = self.new_by_filename
    song.title = filename.split(" - ")[1]
    song
  end
end
