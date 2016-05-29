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
    assert_equal([1], coins(1).purse)
    assert_equal([1,1], coins(2).purse)
    assert_equal([1,1,1], coins(3).purse)
  end

  def test_returns_nickles
    assert_equal([5], coins(5).purse)
    assert_equal([5,1], coins(6).purse)
    assert_equal([5,1,1], coins(7).purse)
  end

  def test_returns_dimes
    assert_equal([10], coins(10).purse)
    assert_equal([10,5], coins(15).purse)
    assert_equal([10,5,1,1], coins(17).purse)
    assert_equal([10,10], coins(20).purse)
  end

  def test_returns_quartes
    assert_equal([25], coins(25).purse)
    assert_equal([25,10,5,1,1], coins(42).purse)
    assert_equal([25,25], coins(50).purse)
    assert_equal([25,25,25,10,5,1,1,1,1], coins(94).purse)
  end
end
