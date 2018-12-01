
require("minitest/autorun")
require("minitest/rg")
require("pry")

require_relative("../guest")
require_relative("../room")
require_relative("../karaoke_bar")


class TestGuest < MiniTest::Test

  def setup()

    @karaoke_bar = KaraokeBar.new("Singers Anonymous", 5.00)

    @guest_01 = Guest.new("Jim Morrison", 2000.00)
    @guest_02 = Guest.new("Brian Harvey", 0.00)

  end


  def test_guest_has_a_name()
    assert_equal("Jim Morrison", @guest_01.guest_name)
  end

  def test_guest_has_a_wallet__empty()
    assert_equal(0.00, @guest_02.wallet)
  end

  def test_guest_has_a_wallet__has_money()
    assert_equal(2000.00, @guest_01.wallet)
  end

  def test_guest_can_pay_entry_fee__yes()
    @guest_01.pay_entry_fee(@karaoke_bar.entry_fee)
    assert_equal(1995.00, @guest_01.wallet)
  end

  def test_guest_can_pay_entry_fee__no()
    assert_equal("Sorry guys, not tonight. I'm skint.", @guest_02.pay_entry_fee(@karaoke_bar.entry_fee))
  end


end
