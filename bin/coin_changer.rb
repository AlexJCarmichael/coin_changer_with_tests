class CoinChanger
  attr_accessor :purse
  def initialize(change)
    @change = change
    @purse = []
  end

  def makes_proper_change
    @change.times do
      @purse << 1
    end
    @purse
  end
end
