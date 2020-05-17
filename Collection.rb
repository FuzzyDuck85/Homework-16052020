class Collection

  attr_reader :songs

  def initialize()
    @songs = []
  end

  def add_song(song)
    @songs.push(song)
  end

  def remove_song(song)
    @songs.delete(song)
  end

end
