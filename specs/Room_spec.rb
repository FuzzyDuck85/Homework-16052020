require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../Guest.rb")
require_relative("../Room.rb")
require_relative("../Song.rb")
require_relative("../Collection.rb")

class RoomTest < MiniTest::Test

  def setup()

    @song01 = Song.new("Intergalactic", "Beastie Boys", "Hip Hop")
    @song02 = Song.new("Uptown Funk", "Bruno Mars", "Hip Hop")
    @song03 = Song.new("Hey Ya!", "Outkast", "Hip Hop")
    @song04 = Song.new("Lose Yourself", "Eminem", "Hip Hop")
    @song05 = Song.new("Rapper's Delight", "The Sugar Hill Gang", "Hip Hop")
    @song06 = Song.new("Angels", "Robbie Williams", "Pop")
    @song07 = Song.new("I Wanna Dance With Somebody", "Whitney Houston", "Pop")
    @song08 = Song.new("Wannabe", "Spice Girls", "Pop")
    @song09 = Song.new("Uptown Girl", "Billy Joel", "Pop")
    @song10 = Song.new("Common People", "Blur", "Pop")
    @song11 = Song.new("Bohemian Rhapsody", "Queen", "Rock")
    @song12 = Song.new("Don't Stop Believin'", "Journey", "Rock")
    @song13 = Song.new("Born to Run", "Bruce Springsteen", "Rock")
    @song14 = Song.new("Welcome To The Jungle", "Guns N' Roses", "Rock")
    @song15 = Song.new("Mr Brightside", "The Killers", "Rock")
    @song16 = Song.new("Working 9 to 5", "Dolly Parton", "Country")
    @song17 = Song.new("Ring of Fire", "Johnny Cash", "Country")
    @song18 = Song.new("Sweet Home Alabama", "Lynyrd Skynyrd", "Country")
    @song19 = Song.new("Take Me Home, Country Roads", "John Denver", "Country")
    @song20 = Song.new("Rhinestone Cowboy", "Glen Campbell", "Country")
    @song21 = Song.new("Summer Nights", "Grease", "Classics")
    @song22 = Song.new("Dancing Queen", "Abba", "Classics")
    @song23 = Song.new("Star Trekkin", "The Firm", "Classics")
    @song24 = Song.new("I Will Survive", "Gloria Gaynor", "Classics")
    @song25 = Song.new("YMCA", "The Village People", "Classics")
    @song26 = Song.new("A Whole New World", "Aladdin", "Oh My Disney")
    @song27 = Song.new("Under the Sea", "The Little Mermaid", "Oh My Disney")
    @song28 = Song.new("Let It Go", "Frozen", "Oh My Disney")
    @song29 = Song.new("Can You Feel The Love Tonight", "Elton John", "Oh My Disney")
    @song30 = Song.new("Reflection", "Mulan", "Oh My Disney")

    @collection01 = Collection.new()
    @collection02 = Collection.new()
    @collection03 = Collection.new()
    @collection04 = Collection.new()
    @collection05 = Collection.new()
    @collection06 = Collection.new()

    @collection01.add_song(@song01)
    @collection01.add_song(@song02)
    @collection01.add_song(@song03)
    @collection01.add_song(@song04)
    @collection01.add_song(@song05)

    @collection02.add_song(@song06)
    @collection02.add_song(@song07)
    @collection02.add_song(@song08)
    @collection02.add_song(@song09)
    @collection02.add_song(@song10)

    @collection03.add_song(@song11)
    @collection03.add_song(@song12)
    @collection03.add_song(@song13)
    @collection03.add_song(@song14)
    @collection03.add_song(@song15)

    @collection04.add_song(@song16)
    @collection04.add_song(@song17)
    @collection04.add_song(@song18)
    @collection04.add_song(@song19)
    @collection04.add_song(@song20)

    @collection05.add_song(@song21)
    @collection05.add_song(@song22)
    @collection05.add_song(@song23)
    @collection05.add_song(@song24)
    @collection05.add_song(@song25)

    @collection06.add_song(@song26)
    @collection06.add_song(@song27)
    @collection06.add_song(@song28)
    @collection06.add_song(@song29)
    @collection06.add_song(@song30)

    @room01 = Room.new("Hip Hop", 6, 7.50, @collection01)
    @room02 = Room.new("Pop", 10, 8.75, @collection02)
    @room03 = Room.new("Rock", 8, 8.00, @collection03)
    @room04 = Room.new("Country", 4, 6.50, @collection04)
    @room05 = Room.new("Classics", 10, 8.75, @collection05)
    @room06 = Room.new("Oh My Disney", 5, 7.00, @collection06)

    @guest01 = Guest.new("Kirk", 10.00, 34, @song10)
    @guest02 = Guest.new("Spock", 15.00, 35, @song01)
    @guest03 = Guest.new("Bones", 100.00, 40, @song15)
    @guest04 = Guest.new("Scotty", 40.00, 44, @song16)
    @guest05 = Guest.new("Uhura", 25.00, 34, @song23)
    @guest06 = Guest.new("Checkov", 150.00, 17, @song26)
    @guest07 = Guest.new("Sulu", 35.00, 29, @song25)

    @away_team01 = [@guest01, @guest02, @guest03]
    @away_team02 = [@guest04, @guest05, @guest06, @guest07]
  end
  # => 1
  def test_can_create_room()
    assert_equal(Room, @room03.class)
  end
  # => 2
  def test_initial_room_properties
    assert_equal("Hip Hop", @room01.room_genre)
    assert_equal(6, @room01.capacity)
    assert_equal(7.50, @room01.entry_fee)
    assert_equal([], @room01.guests)
    assert_equal(5, @room01.songs.length)
  end
# => 3
  def test_check_in_guests
    @room02.check_in(@away_team01)
    assert_equal(3, @room02.guests.length)
    assert_equal(26.25, @room02.kitty)
    assert_equal(7, @room02.capacity)
  end
# => 4
  def test_room_at_capacity
    @room06.check_in(@away_team01)
    @room06.check_in(@away_team02)
    assert_equal(3, @room06.guests.length)
  end
# => 5
  def test_check_out_guests
    @room05.check_in(@away_team02)
    @room05.check_in(@away_team01)
    @room05 .check_out(@away_team01)
    assert_equal(4, @room05.guests.length)
    assert_equal(35.00, @room05.kitty)
    assert_equal(6, @room05. capacity)
  end
end
