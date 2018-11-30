
require("minitest/autorun")
require("minitest/rg")
require("pry")

require_relative("../guest")


class TestGuest < MiniTest::Test


  def test_guest_has_a_name()
    guest = Guest.new("Jim Morrison")
    assert_equal("Jim Morrison", guest.guest_name)
  end




end
