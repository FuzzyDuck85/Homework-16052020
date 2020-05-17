class Room

  attr_reader :room_genre, :capacity, :entry_fee, :till, :guests, :songs, :collection
  attr_accessor :kitty
  def initialize(room_genre, capacity, entry_fee, collection)
    @room_genre = room_genre
    @capacity = capacity
    @entry_fee = entry_fee
    @till = 0.00

    @guests = []
    @kitty = 0.00

    @collection = collection
    @songs = []
    for song in @collection.songs
      if song.genre == @room_genre
        @songs.push(song)
      end
    end
  end

  def check_in(away_team)
    if away_team.length() <= @capacity
      for guest in away_team
        @guests.push(guest)
        @kitty += @entry_fee
        @capacity -= 1
        for song in @songs
          if guest.fav_song == song
            guest.play_fav_song
          end
        end
      end
    else p "Room Over Capacity"
    end
  end

  def check_out(away_team)
    for guest in away_team
      @guests.delete(guest)
      @kitty -= @entry_fee
      @capacity += 1
    end
  end
end
