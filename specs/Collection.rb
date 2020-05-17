
require('minitest/autorun')
require('minitest/reporters')

require_relative('../Collection')
require_relative('../Song')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestSongList < MiniTest::Test
  def setup()
    @song01 = Song.new("Intergalactic", "Beastie Boys", "Hip Hop")
    @song02 = Song.new("Angels", "Robbie Williams", "Pop")
    @song03 = Song.new("Bohemian Rhapsody", "Queen", "Rock")
    @song04 = Song.new("Working 9 to 5", "Dolly Parton", "Country")
    @song05 = Song.new("Star Trekkin", "The Firm", "Classics")
    @song06 = Song.new("A Whole New World", "Aladdin", "Oh My Disney")
    @collection = Collection.new()
  end

  def test_adding_a_song
    @collection.add_song(@song05)
    assert_equal(1, @collection.songs.length())
  end

  def test_removing_a_song
    @collection.add_song(@song06)
    @collection.add_song(@song02)
    @collection.remove_song(@song06)
    assert_equal(1, @collection.songs.length())
  end
end
