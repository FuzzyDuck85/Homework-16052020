require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


require_relative("../Guest.rb")
require_relative("../Room.rb")
require_relative("../Song.rb")

class RoomTest < MiniTest::Test

  def setup

    @song1 = Song.new("Intergalactic", "Beastie Boys")
    @song2 = Song.new("Common People", "Blur")
    @song3 = Song.new("Mr Brightside", "The Killers")
    @song4 = Song.new("Working 9 to 5", "Dolly Parton")
    @song5 = Song.new("Star Trekkin", "The Firm")
    @song6 = Song.new("YMCA", "The Village People")
    @song7 = Song.new("A Whole New World", "Aladdin")


    @collection1 = [@song1, @song2, @song3, @song4]
    @collection2 = [@song5, @song6, @song7]

    @room01 = Room.new("Banging Tunes", 3, @collection1, 5.00)
    @room02 = Room.new("Classics", 4, @collection2, 6.75)

    @guest01 = Guest.new("Kirk", 10.00, @song1)
    @guest02 = Guest.new("Spock", 15.00, @song2)
    @guest03 = Guest.new("Bones", 100.00, @song3)
    @guest04 = Guest.new("Scotty", 40.00, @song4)
    @guest05 = Guest.new("Uhura", 25.00, @song5)
    @guest06 = Guest.new("Checkov", 150.00, @song6)
    @guest07 = Guest.new("Sulu", 35.00, @song7)

    @guests01 = [@guest01, @guest02, @guest03]
    @guests02 = [@guest04, @guest05, @guest06, @guest07]

  end
  # => 1
  def test_can_create_room()
    assert_equal(Room, @room01.class)
  end
  # => 2
  def test_room_has_name
    assert_equal("Banging Tunes", @room01.name)
  end
  # => 3
  def test_room_has_songs
      assert_equal(3, @room02.number_of_songs)
  end

  def test_can_check_in_guests
    @room01.check_in_guests(@guests01)
    assert_equal(3, @room01.guests.count)
  end

  def test_can_check_in_guests__room_already_has_guests
    group1 = [@guest01, @guest02]
    group2 = [@guest04]
    @room01.check_in_guests(group1)
    @room01.check_in_guests(group2)
    assert_equal(3, @room01.number_of_guests())
  end

  def test_can_check_in_guests__one_guest_cannot_afford
    guests = [@guest01, @guest02, @guest03]
    @room01.check_in_guests(guests)
    assert_equal(3, @room01.number_of_guests())
  end

  def test_cannot_be_overbooked
    @room01.check_in_guests(@guests01)
    @room01.check_in_guests([@guest04])
    assert_equal(3, @room01.number_of_guests())
  end

  def test_guests_can_check_out
    @room01.check_in_guests(@guests01)
    @room01.check_out_guests
    assert_equal(0, @room01.guests.count)
  end

  def test_recognises_fav_song
    @room01.check_in_guests(@guests01)
    songs = @room01.songs
    assert_equal("This song is out of this world!!", @guests01[1].play_fav_song(songs))
  end

  def test_fee_was_paid_at_check_in
    @room01.check_in_guests(@guests02)
    assert_equal(0, @room01.till)
    assert_equal(40.00, @guests02[0].wallet)
    assert_equal(25.00, @guests02[1].wallet)
    assert_equal(150.00, @guests02[2].wallet)
    assert_equal(35.00, @guests02[3].wallet)

  end

  def test_can_add_one_song
    @room01.add_song(@song06)
    assert_equal(5, @room01.number_of_songs)
  end

  def test_can_add_multiple_songs
    @room01.add_multiple_songs(@collection2)
    assert_equal(7, @room01.number_of_songs)
  end
end
