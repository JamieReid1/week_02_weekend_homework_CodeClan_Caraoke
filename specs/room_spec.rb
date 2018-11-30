
require("minitest/autorun")
require("minitest/rg")
require("pry")

require_relative("../room")
require_relative("../guest")


class TestRoom < MiniTest::Test

  def setup()

    @room_01 = Room.new("Glam Rock Room", 20)
    @room_02 = Room.new("80's Pop Room", 20)

    @guest_01 = Guest.new("Jim Morrison", 2000.00)
    @guest_02 = Guest.new("Brian Harvey", 0.00)
    @guest_03 = Guest.new("Alice Cooper", 1000.00)

  end


  def test_room_has_a_name()
    assert_equal("Glam Rock Room", @room_01.room_name)
  end

  def test_room_has_a_cpacity()
    assert_equal(20, @room_01.room_capacity)
  end

  def test_guest_can_check__in()
    @room_01.check_in(@guest_03)
    assert_equal([@guest_03], @room_01.guest_list)
  end




end
