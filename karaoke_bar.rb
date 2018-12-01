
class KaraokeBar

  attr_reader :bar_name, :bar_till
  attr_writer :bar_till

  def initialize(bar_name)

    @bar_name = bar_name
    @bar_till = 0


  end


end
