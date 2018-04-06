require "minitest/autorun"
require "minitest/reporters"
Minitest::Reporters.use!

$LOAD_PATH.unshift(File.expand_path('../', __FILE__))
require 'money'
require 'bank'
require 'sum'
require 'pair'

class TestMoney < Minitest::Test
  def test_multiplication
    five = Money.dollar(5)
    assert_equal Money.dollar(10), five.times(2)
    assert_equal Money.dollar(15), five.times(3)
  end

  def test_equality
    assert_equal Money.dollar(5).equals(Money.dollar(5)), true
    assert_equal Money.dollar(5).equals(Money.dollar(6)), false
    assert_equal Money.franc(5).equals(Money.dollar(5)), false
  end

  def test_currency
    assert_equal "USD", Money.dollar(1).currency
    assert_equal "CHF", Money.franc(1).currency
  end

  def test_simple_addition
    five = Money.dollar(5)
    sum = five.plus(five)
    bank = Bank.new
    reduced = bank.reduce(sum, 'USD')
    assert_equal Money.dollar(10), reduced
  end

  def test_plus_returns_sum
    five = Money.dollar(5)
    result = five.plus(five)
    sum = result
    assert_equal five, sum.augend
    assert_equal five, sum.added
  end

  def test_reduce_sum
    sum = Sum.new(Money.dollar(3), Money.dollar(4))
    bank = Bank.new
    result = bank.reduce(sum, 'USD')
    assert_equal Money.dollar(7), result
  end

  def test_reduce_money
    bank = Bank.new
    result = bank.reduce(Money.dollar(1), 'USD')
    assert_equal Money.dollar(1), result
  end

  def test_reduce_money_different_currency
    bank = Bank.new
    bank.add_rate('CHF', 'USD', 2)
    result = bank.reduce(Money.franc(2), 'USD')
    assert_equal Money.dollar(1), result
  end

  def test_indentity_rate
    assert_equal 1, Bank.new.rate('USD', 'USD')
  end

  def test_mixed_addition
    five_buckes = Money.dollar(5)
    ten_francs  = Money.franc(10)
    bank = Bank.new
    bank.add_rate('CHF', 'USD', 2)
    result = bank.reduce(five_buckes.plus(ten_francs), 'USD')
    assert_equal Money.dollar(10), result
  end
end
