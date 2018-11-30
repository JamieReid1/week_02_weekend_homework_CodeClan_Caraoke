
require("minitest/autorun")
require("minitest/rg")
require("pry")

require_relative("../song")


class TestSong < MiniTest::Test


  def test_song_has_an_artist()
    song = Song.new("The Champs", "Tequila")
    assert_equal("The Champs", song.artist)
  end
  
  def test_song_has_a_title()
    song = Song.new("The Champs", "Tequila")
    assert_equal("Tequila", song.title)
  end






end
