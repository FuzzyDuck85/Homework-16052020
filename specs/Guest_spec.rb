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

    @guest01 = Guest.new("Kirk", 10.00, 34, @song01)
    @guest02 = Guest.new("Spock", 15.00, 35, @song10)
    @guest03 = Guest.new("Bones", 100.00, 40, @song15)
    @guest04 = Guest.new("Scotty", 40.00, 44, @song16)
    @guest05 = Guest.new("Uhura", 25.00, 34, @song23)
    @guest06 = Guest.new("Checkov", 150.00, 17, @song26)
    @guest07 = Guest.new("Sulu", 35.00, 29, @song25)

  end
# => 1
  def test_guest_values
    assert_equal("Spock", @guest02.name)
    assert_equal(15.00, @guest02.wallet)
    assert_equal(35, @guest02.age)
    assert_equal("Intergalactic", @guest02.fav_song)
  end
# => 2
  def test_play_fav_song
    assert_equal("This song is out of this world!!", @guest05.play_fav_song)
  end
# => 3
  def test_pay_money
    @guest07.pay_money(18.00)
    assert_equal(17.00, @guest07.wallet)
  end
end
