
class Guest

  attr_reader :guest_name, :wallet, :pay_entry_fee, :favourite_song
  attr_writer :wallet, :pay_entry_fee

  def initialize(guest_name, wallet, favourite_song)

    @guest_name = guest_name
    @wallet = wallet
    @favourite_song = favourite_song

  end


  def pay_entry_fee(entry_fee)
      if @wallet >= entry_fee
      @wallet -= entry_fee
    elsif @wallet < entry_fee
      return "Sorry guys, not tonight. I'm skint."
    end
  end

  def favourite_song_on_playlist(room)
    if room.playlist.include?(@favourite_song)
      return "Yeah, that's my favourite song!"
    end
  end


end
