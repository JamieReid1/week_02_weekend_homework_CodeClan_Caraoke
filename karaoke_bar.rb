
class KaraokeBar

  attr_reader :bar_name, :bar_till, :entry_fee
  attr_writer :bar_till, :entry_fee

  def initialize(bar_name, entry_fee)

    @bar_name = bar_name
    @entry_fee = entry_fee
    @bar_till = 0.00


  end


end
