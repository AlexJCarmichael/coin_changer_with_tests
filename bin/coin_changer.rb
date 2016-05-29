class CoinChanger
  attr_accessor :purse
  def initialize(change)
    @change = change
    @purse = []
    @coins = [25,10,5,1]
    @coins.each do |coin|
      makes_proper_change(coin)
    end
  end

  def makes_proper_change(coin)
    (@change/coin).times do
      @purse << coin
      @change -= coin
    end
  end
end
