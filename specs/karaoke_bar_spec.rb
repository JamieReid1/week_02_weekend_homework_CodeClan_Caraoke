
require("minitest/autorun")
require("minitest/rg")
require("pry")

require_relative("../karaoke_bar")
require_relative("../room")


class TestKaraokeBar < MiniTest::Test

  def setup

    @karaoke_bar = KaraokeBar.new("Singers Anonymous")

  end


  def test_karaoke_bar_has_a_name()
    assert_equal("Singers Anonymous", @karaoke_bar.bar_name)
  end

  def test_bar_has_a_till__empty()
      assert_equal(0.00, @karaoke_bar.bar_till)
  end

  def test_bar_till_can_take_money()

  end



end
