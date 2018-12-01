
require("minitest/autorun")
require("minitest/rg")
require("pry")

require_relative("../room")
require_relative("../guest")
require_relative("../song")
require_relative("../karaoke_bar")


class TestRoom < MiniTest::Test

  def setup()

    @song_01 = Song.new("The Champs", "Tequila")
    @song_02 = Song.new("Prince", "Purple Rain")
    @song_03 = Song.new("Blue Swede", "Hooked On A Feeling")
    @song_04 = Song.new("Frank Sinatra", "My Way")

    @song_list = [@song_01, @song_02, @song_03]

    @room_01 = Room.new("Glam Rock Room", 4, @song_list)
    @room_02 = Room.new("80's Pop Room", 4, @song_list)
    @room_03 = Room.new("Rap Room", 4, @song_list)

    @guest_01 = Guest.new("Jim Morrison", 2000.00)
    @guest_02 = Guest.new("Brian Harvey", 0.00)
    @guest_03 = Guest.new("Alice Cooper", 1000.00)
    @guest_04 = Guest.new("Biggie Smalls", 1000.00)
    @guest_05 = Guest.new("Eminem", 1000.00)
    @guest_06 = Guest.new("Tupac Shakur", 1000.00)

  end


  def test_room_has_a_name()
    assert_equal("Glam Rock Room", @room_01.room_name)
  end

  def test_room_has_a_cpacity()
    assert_equal(4, @room_01.room_capacity)
  end

  def test_room_has_a_guest_list__empty()
    assert_equal([ ], @room_01.guest_list)
  end

  def test_room_has_a_guest_list__populated()
    @room_01.guest_list = [@guest_03]
    assert_equal(1, @room_01.guest_list.length)
  end

  def test_guest_can_check__in()
    @room_01.check_in(@guest_03)
    assert_equal([@guest_03], @room_01.guest_list)
  end

  def test_guest_can_check__out()
    @room_03.guest_list = [@guest_04, @guest_05, @guest_06]
    @room_03.check_out(@guest_06)
    assert_equal([@guest_04, @guest_05], @room_03.guest_list)
  end

  def test_guest_cannot_check_in_over_capacity()
    @room_03.guest_list = [@guest_01, @guest_02, @guest_03, @guest_04]
    @room_03.check_in(@guest_05)
    assert_equal("Sorry, no more room. Please wait at the bar.", @room_03.check_in(@guest_05))
  end

  def test_room_has_a_playlist()
    assert_equal(@song_list, @room_01.playlist)
  end

  def test_edit_playlist__add()
    @room_01.add_song(@song_04)
    assert_equal([@song_01, @song_02, @song_03, @song_04], @room_01.playlist)
  end

  def test_edit_playlist__remove()
    @room_01.remove_song(@song_01)
    assert_equal([@song_02, @song_03], @room_01.playlist)
  end








end
