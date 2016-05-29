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

  def test_returns_pennies
    assert_equal([1], coins(1).makes_proper_change)
    assert_equal([1,1], coins(2).makes_proper_change)
    assert_equal([1,1,1], coins(3).makes_proper_change)
  end
end
