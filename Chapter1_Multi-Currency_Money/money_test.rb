require "minitest/autorun"
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'dollar'

class TestMoney < Minitest::Test
  def test_multiplication
    five = Dollar.new(5)
    product = five.times(2)
    assert_equal 10, product.amount
    product = five.times(3)
    assert_equal 15, product.amount
  end

  def test_equality
    assert_equal Dollar.new(5).equals(Dollar.new(5)), true
    assert_equal Dollar.new(5).equals(Dollar.new(6)), false
  end
end
