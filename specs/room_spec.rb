
require("minitest/autorun")
require("minitest/rg")
require("pry")

require_relative("../room")


class TestRoom < MiniTest::Test


  def test_room_has_a_name()
    room = Room.new("Glam Rock Room")
    assert_equal("Glam Rock Room", room.room_name)
  end






end
