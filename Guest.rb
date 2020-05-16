class Guest

  attr_reader :name, :wallet, :age, :fav_song

  def initialize(name, wallet, age, fav_song)
    @name = name
    @wallet = wallet
    @age = age
    @fav_song = fav_song
  end
end
