require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../Guest.rb")
require_relative("../Room.rb")
require_relative("../Song.rb")

class SongTest < MiniTest::Test

  def setup
    @song01 = Song.new("Intergalactic", "Beastie Boys", "Hip Hop")
    end

  def test_define_song
    assert_equal("Intergalactic", @song01.title)
    assert_equal("Beastie Boys", @song01.artist)
    assert_equal("Hip Hop", @song01.genre)
  end
end

# @song01 = Song.new("Intergalactic", "Beastie Boys", "Hip Hop")
# @song02 = Song.new("Uptown Funk", "Bruno Mars", "Hip Hop")
# @song03 = Song.new("Hey Ya!", "Outkast", "Hip Hop")
# @song04 = Song.new("Lose Yourself", "Eminem", "Hip Hop")
# @song05 = Song.new("Rapper's Delight", "The Sugar Hill Gang", "Hip Hop")
# @song06 = Song.new("Angels", "Robbie Williams", "Pop")
# @song07 = Song.new("I Wanna Dance With Somebody", "Whitney Houston", "Pop")
# @song08 = Song.new("Wannabe", "Spice Girls", "Pop")
# @song09 = Song.new("Uptown Girl", "Billy Joel", "Pop")
# @song10 = Song.new("Common People", "Blur", "Pop")
# @song11 = Song.new("Bohemian Rhapsody", "Queen", "Rock")
# @song12 = Song.new("Don't Stop Believin'", "Journey", "Rock")
# @song13 = Song.new("Born to Run", "Bruce Springsteen", "Rock")
# @song14 = Song.new("Welcome To The Jungle", "Guns N' Roses", "Rock")
# @song15 = Song.new("Mr Brightside", "The Killers", "Rock")
# @song16 = Song.new("Working 9 to 5", "Dolly Parton", "Country")
# @song17 = Song.new("Ring of Fire", "Johnny Cash", "Country")
# @song18 = Song.new("Sweet Home Alabama", "Lynyrd Skynyrd", "Country")
# @song19 = Song.new("Take Me Home, Country Roads", "John Denver", "Country")
# @song20 = Song.new("Rhinestone Cowboy", "Glen Campbell", "Country")
# @song21 = Song.new("Summer Nights", "Grease", "Classics")
# @song22 = Song.new("Dancing Queen", "Abba", "Classics")
# @song23 = Song.new("Star Trekkin", "The Firm", "Classics")
# @song24 = Song.new("I Will Survive", "Gloria Gaynor", "Classics")
# @song25 = Song.new("YMCA", "The Village People", "Classics")
# @song26 = Song.new("A Whole New World", "Aladdin", "Oh My Disney")
# @song27 = Song.new("Under the Sea", "The Little Mermaid", "Oh My Disney")
# @song28 = Song.new("Let It Go", "Frozen", "Oh My Disney")
# @song29 = Song.new("Can You Feel The Love Tonight", "Elton John", "Oh My Disney")
# @song30 = Song.new("Reflection", "Mulan", "Oh My Disney")
