
require("minitest/autorun")
require("minitest/rg")
require("pry")

require_relative("../song")


class TestSong < MiniTest::Test


  def test_song_has_a_name()
    song = Song.new("Tequila", "The Champs")
    assert_equal("Tequila", song.song_name)
  end

  def test_song_has_an_artist()
    song = Song.new("Tequila", "The Champs")
    assert_equal("The Champs", song.artist)
  end




end
