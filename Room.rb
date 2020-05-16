class Room

  attr_reader :room_genre
  def initialize(room_genre)
    @room_genre = room_genre
    @guests = []
    @songs = []
  end

  def guest_count
    return @guests.size
  end

  def song_count
    return @songs.size
  end

  def add_song(song)
    @songs << song
  end

  def add_guest(guest)
    @guests << guest
  end

  def remove_guest(guest)
    @guests.delete(guest)
  end

end
