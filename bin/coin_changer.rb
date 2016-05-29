class CoinChanger
  attr_accessor :purse
  def initialize(change)
    @change = change
    @purse = []
  end

  def makes_proper_change
    if @change >= 5
      @purse << 5
      @change -= 5
    end
      @change.times do
        @purse << 1
      end
    @purse
  end
end
