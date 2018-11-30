
require("minitest/autorun")
require("minitest/rg")
require("pry")

require_relative("../guest")


class TestGuest < MiniTest::Test


  def test_guest_has_a_name()
    guest_01 = Guest.new("Jim Morrison", 2000.00)
    assert_equal("Jim Morrison", guest_01.guest_name)
  end

  def test_guest_has_a_wallet__empty()
    guest_02 = Guest.new("Brian Harvey", 0.00)
    assert_equal(0.00, guest_02.wallet)
  end

  def test_guest_has_a_wallet__has_money()
    guest_01 = Guest.new("Jim Morrison", 2000.00)
    assert_equal(2000.00, guest_01.wallet)
  end


end
