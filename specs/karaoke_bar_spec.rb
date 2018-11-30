
require("minitest/autorun")
require("minitest/rg")
require("pry")

require_relative("../karaoke_bar")


class TestKaraokeBar < MiniTest::Test


  def test_karaoke_bar_has_a_name()
    karaoke_bar = KaraokeBar.new("Singers Anonymous")
    assert_equal("Singers Anonymous", karaoke_bar.bar_name)
  end





end
