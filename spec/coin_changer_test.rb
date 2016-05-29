require 'minitest/autorun'
require 'minitest/pride'
require_relative '../bin/coin_changer.rb'

class CoinChangerTest < Minitest::Test
  def coins(n)
    CoinChanger.new(n)
  end

  def test_exists?
    changer = coins(1)
    assert(changer)
  end
end
