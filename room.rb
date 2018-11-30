
class Room

  attr_reader :room_name, :room_capacity, :guest_list
  attr_writer :guest_list

  def initialize(room_name, room_capacity)

    @room_name = room_name
    @room_capacity = room_capacity
    @guest_list = [ ]


  end

  def check_in(guest)
    @guest_list << guest
  end

  def check_out(guest)
    @guest_list.delete(guest)
  end


end
