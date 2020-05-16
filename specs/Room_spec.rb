require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../Guest.rb")
require_relative("../Room.rb")
require_relative("../Song.rb")

class RoomTest < MiniTest::Test
  def setup

    @song01 = Song.new("Intergalactic - Beastie Boys - Hip Hop")
    @song02 = Song.new("Uptown Funk - Bruno Mars - Hip Hop")
    @song03 = Song.new("Hey Ya! - Outkast - Hip Hop")
    @song04 = Song.new("Lose Yourself - Eminem - Hip Hop")
    @song05 = Song.new("Rapper's Delight - The Sugar Hill Gang - Hip Hop")
    @song06 = Song.new("Angels - Robbie Williams - Pop")
    @song07 = Song.new("I Wanna Dance With Somebody - Whitney Houston - Pop")
    @song08 = Song.new("Wannabe - Spice Girls - Pop")
    @song09 = Song.new("Uptown Girl - Billy Joel - Pop")
    @song10 = Song.new("Common People - Blur - Pop")
    @song11 = Song.new("Bohemian Rhapsody - Queen - Rock")
    @song12 = Song.new("Don't Stop Believin' - Journey - Rock")
    @song13 = Song.new("Born to Run - Bruce Springsteen - Rock")
    @song14 = Song.new("Welcome To The Jungle - Guns N' Roses - Rock")
    @song15 = Song.new("Mr Brightside - The Killers - Rock")
    @song16 = Song.new("Working 9 to 5 - Dolly Parton - Country")
    @song17 = Song.new("Ring of Fire - Johnny Cash - Country")
    @song18 = Song.new("Sweet Home Alabama - Lynyrd Skynyrd - Country")
    @song19 = Song.new("Take Me Home, Country Roads - John Denver - Country")
    @song20 = Song.new("Rhinestone Cowboy - Glen Campbell - Country")
    @song21 = Song.new("Summer Nights - Grease - Classics")
    @song22 = Song.new("Dancing Queen - Abba - Classics")
    @song23 = Song.new("Star Trekkin - The Firm - Classics")
    @song24 = Song.new("I Will Survive - Gloria Gaynor - Classics")
    @song25 = Song.new("YMCA - The Village People - Classics")
    @song26 = Song.new("A Whole New World - Aladdin - Oh My Disney")
    @song27 = Song.new("Under the Sea - The Little Mermaid - Oh My Disney")
    @song28 = Song.new("Let It Go - Frozen - Oh My Disney")
    @song29 = Song.new("Can You Feel The Love Tonight - Elton John - Oh My Disney")
    @song30 = Song.new("Reflection - Mulan - Oh My Disney")

    @room01 = Room.new("Hip Hop")
    @room02 = Room.new("Pop")
    @room03 = Room.new("Rock")
    @room04 = Room.new("Country")
    @room05 = Room.new("Classics")
    @room06 = Room.new("Oh My Disney")

    @guest01 = Guest.new("Kirk", 10.00, 34, 0)
    @guest02 = Guest.new("Spock", 15.00, 35, 0)
    @guest03 = Guest.new("Bones", 100.00, 40, 0)
    @guest04 = Guest.new("Scotty", 40.00, 44, 0)
    @guest05 = Guest.new("Uhura", 25.00, 34, 0)
    @guest06 = Guest.new("Checkov", 150.00, 17, 0)
    @guest07 = Guest.new("Sulu", 35.00, 29, 0)

  end

  def test_can_create_room()
    assert_equal(Room, @room03.class)
  end

  def test_room_has_genre
    assert_equal("Oh My Disney", @room06.room_genre)
  end

  def test_room_is_empty()
    assert_equal(0, @room01.guest_count)
  end

  def test_room_song_list_empty()
    assert_equal(0, @room01.song_count)
  end

  def test_can_add_song
    @room01.add_song(@song01)
    assert_equal(1, @room01.song_count)
  end

  def test_can_add_guest
    @room01.add_guest(@guest01)
    assert_equal(1, @room01.guest_count)
  end

  def test_can_remove_guest
    @room01.add_guest(@guest01)
    @room01.add_guest(@guest02)
    @room01.add_guest(@guest03)
    @room01.remove_guest(@guest01)
    assert_equal(2, @room01.guest_count)
  end
end
