require "minitest/autorun"
require "minitest/reporters"
Minitest::Reporters.use!

$LOAD_PATH.unshift(File.expand_path('../', __FILE__))
require 'money'

class TestMoney < Minitest::Test
  def test_multiplication
    five = Money.dollar(5)
    assert_equal Money.dollar(10), five.times(2)
    assert_equal Money.dollar(15), five.times(3)
  end

  def test_equality
    assert_equal Money.dollar(5).equals(Money.dollar(5)), true
    assert_equal Money.dollar(5).equals(Money.dollar(6)), false
    assert_equal Money.franc(5).equals(Money.franc(5)), true
    assert_equal Money.franc(5).equals(Money.franc(6)), false
    assert_equal Money.franc(5).equals(Money.dollar(5)), false
  end

  def test_franc_multiplication
    five = Money.franc(5)
    assert_equal Money.franc(10), five.times(2)
    assert_equal Money.franc(15), five.times(3)
  end
end
