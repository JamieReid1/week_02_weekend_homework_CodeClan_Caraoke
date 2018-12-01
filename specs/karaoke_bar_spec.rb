
require("minitest/autorun")
require("minitest/rg")
require("pry")

require_relative("../karaoke_bar")
require_relative("../room")
require_relative("../guest")


class TestKaraokeBar < MiniTest::Test

  def setup

    @karaoke_bar = KaraokeBar.new("Singers Anonymous", 5.00)

    @guest_01 = Guest.new("Jim Morrison", 2000.00)
    @guest_02 = Guest.new("Brian Harvey", 0.00)

  end


  def test_karaoke_bar_has_a_name()
    assert_equal("Singers Anonymous", @karaoke_bar.bar_name)
  end

  def test_karaoke_bar_has_an_entry_fee()
    assert_equal(5.00, @karaoke_bar.entry_fee)
  end

  def test_karaoke_bar_has_a_till__empty()
      assert_equal(0.00, @karaoke_bar.bar_till)
  end

  def test_karaoke_bar_till_can_take_money()
    @karaoke_bar.charge_entry_fee(@guest_01)
    assert_equal(5.00, @karaoke_bar.bar_till)
  end


end
