
require("minitest/autorun")
require("minitest/rg")
require("pry")

require_relative("../song")


class TestSong < MiniTest::Test


  def test_song_has_a_name()
    song = Song.new("Tequila")
    assert_equal("Tequila", song.song_name)
  end




end
