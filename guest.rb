
class Guest

  attr_reader :guest_name, :wallet, :pay_entry_fee
  attr_writer :wallet, :pay_entry_fee

  def initialize(guest_name, wallet)

    @guest_name = guest_name
    @wallet = wallet

  end


  def pay_entry_fee(entry_fee)
      if @wallet >= entry_fee
      @wallet -= entry_fee
    elsif @wallet < entry_fee
      return "Sorry guys, not tonight. I'm skint."
    end
  end



end
