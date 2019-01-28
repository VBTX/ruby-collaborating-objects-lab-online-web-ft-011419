class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
   filename = @path.split("/")
  end

  def import(filename)

  end
end
