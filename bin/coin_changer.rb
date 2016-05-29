class CoinChanger
  attr_accessor :purse
  def initialize(change)
    @change = change
    @purse = []
  end

  def makes_proper_change
    if @change >=25
      quarters = @change/25
      quarters.times do
        @purse << 25
        @change -=25
      end
    end
    if @change >= 10
      dimes = @change/10
      dimes.times do
        @purse << 10
        @change -= 10
      end
    end
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
