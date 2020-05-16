require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../Guest.rb")
require_relative("../Room.rb")
require_relative("../Song.rb")

class GuestTest < MiniTest::Test

  def setup
    @guest01 = Guest.new("Kirk", 10.00, 34, "Common People")
    @guest02 = Guest.new("Spock", 15.00, 35, "Intergalactic")
    @guest03 = Guest.new("Bones", 100.00, 40, "Mr Brightside")
    @guest04 = Guest.new("Scotty", 40.00, 44, "Working 9 to 5")
    @guest05 = Guest.new("Uhura", 25.00, 34, "Star Trekkin")
    @guest06 = Guest.new("Checkov", 150.00, 17, "A Whole New World")
    @guest07 = Guest.new("Sulu", 35.00, 29, "YMCA - The Village People - Classics")

#     guest01 = Guest.new("Kirk", 10.00, 34, "Common People")
#     guest02 = Guest.new("Spock", 15.00, 35, "Intergalactic")
#     guest03 = Guest.new("Bones", 100.00, 40, "Mr Brightside")
#     guest04 = Guest.new("Scotty", 40.00, 44, "Working 9 to 5")
#     guest05 = Guest.new("Uhura", 25.00, 34, "Star Trekkin")
#     guest06 = Guest.new("Checkov", 150.00, 17, "A Whole New World")
#     guest07 = Guest.new("Sulu", 35.00, 29, "YMCA - The Village People - Classics")
#
# @guest = [guest01, guest02, guest03, guest04, guest05, guest06, guest07]

  end

  def test_guest_has_name
    assert_equal("Spock", @guest02.name())
  end

  def test_guest_has_money
    assert_equal(40.00, @guest04.wallet())
  end

  def test_guest_has_age
    assert_equal(34, @guest05.age())
  end

  def test_guest_has_fav_song
    assert_equal("YMCA - The Village People - Classics", @guest07.fav_song())
  end

end
