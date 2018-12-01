
class Guest

  attr_reader :guest_name, :wallet
  attr_writer :wallet

  def initialize(guest_name, wallet)

    @guest_name = guest_name
    @wallet = wallet

  end


  def pay_entry_fee(karaoke_bar)
    if @wallet >= karaoke_bar.entry_fee
      @wallet -= karaoke_bar.entry_fee
    elsif @wallet < karaoke_bar.entry_fee
      return "Sorry guys, not tonight. I'm skint."
    end
  end



end
