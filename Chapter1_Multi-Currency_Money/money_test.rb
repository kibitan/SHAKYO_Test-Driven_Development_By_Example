require "minitest/autorun"
require "minitest/reporters"
Minitest::Reporters.use!

$LOAD_PATH.unshift(File.expand_path('../', __FILE__))
require 'money'
require 'bank'

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
end
