class Guest

  attr_accessor :name, :wallet, :age, :fav_song

  def initialize(name, wallet, age, fav_song)
    @name = name
    @wallet = wallet
    @age = age
    @fav_song = fav_song
  end

  def pay_money(amount)
    @wallet -= amount
  end

  def play_fav_song
    return "This song is out of this world!!"
  end
end
