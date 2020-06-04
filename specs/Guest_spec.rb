require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../Guest.rb")
require_relative("../Room.rb")
require_relative("../Song.rb")

class GuestTest < MiniTest::Test

  def setup

    @song01 = Song.new("Intergalactic", "Beastie Boys", "Hip Hop")
    @song10 = Song.new("Common People", "Blur", "Pop")
    @song15 = Song.new("Mr Brightside", "The Killers", "Rock")
    @song16 = Song.new("Working 9 to 5", "Dolly Parton", "Country")
    @song23 = Song.new("Star Trekkin", "The Firm", "Classics")
    @song25 = Song.new("YMCA", "The Village People", "Classics")
    @song26 = Song.new("A Whole New World", "Aladdin", "Oh My Disney")

    @guest01 = Guest.new("Kirk", 10.00, @song01)
    @guest02 = Guest.new("Spock", 15.00, @song10)
    @guest03 = Guest.new("Bones", 100.00, @song15)
    @guest04 = Guest.new("Scotty", 40.00, @song16)
    @guest05 = Guest.new("Uhura", 25.00, @song23)
    @guest06 = Guest.new("Checkov", 150.00, @song26)
    @guest07 = Guest.new("Sulu", 35.00, @song25)

  end
# => 1
  def test_guest_name
    assert_equal("Spock", @guest02.name)
  end
# => 2
def test_guest_funds
  assert_equal(15.00, @guest02.wallet)
end
# => 3
  def test_fav_song
    assert_equal("Star Trekkin", @guest05.fav_song.title)
  end
end
