
class Room

  attr_reader :room_name, :room_capacity, :guest_list, :playlist
  attr_writer :guest_list, :playlist

  def initialize(room_name, room_capacity, playlist)

    @room_name = room_name
    @room_capacity = room_capacity
    @playlist = playlist
    @guest_list = [ ]


  end

  def check_in(guest)
    if @guest_list.length < @room_capacity
      @guest_list << guest
    else
      return "Sorry, no more room. Please wait at the bar." 
    end
  end

  def check_out(guest)
    @guest_list.delete(guest)
  end

  def add_song(song)
    @playlist << song
  end

  def remove_song(song)
    @playlist.delete(song)
  end


end
