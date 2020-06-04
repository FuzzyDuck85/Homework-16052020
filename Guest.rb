class Guest

  attr_accessor(:name, :wallet, :fav_song)

  def initialize(name, wallet, fav_song)
    @name = name
    @wallet = wallet
    @fav_song = fav_song
  end

  def pay_money(amount)
    @wallet = @wallet - amount
  end

  def play_fav_song(songs) 
    songs.each {|song| return "This song is out of this world!!" if song.title == @fav_song.title}
  end

  def afford_entry?(entry_fee)
    return @wallet >= entry_fee
  end
end
