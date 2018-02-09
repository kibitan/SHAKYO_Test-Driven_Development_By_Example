require "minitest/autorun"
require "minitest/reporters"
Minitest::Reporters.use!

require './dollar'
require './franc'

class TestMoney < Minitest::Test
  def test_multiplication
    five = Dollar.new(5)
    assert_equal Dollar.new(10), five.times(2)
    assert_equal Dollar.new(15), five.times(3)
  end

  def test_equality
    assert_equal Dollar.new(5).equals(Dollar.new(5)), true
    assert_equal Dollar.new(5).equals(Dollar.new(6)), false
    assert_equal Franc.new(5).equals(Franc.new(5)), true
    assert_equal Franc.new(5).equals(Franc.new(6)), false
  end

  def test_franc_multiplication
    five = Franc.new(5)
    assert_equal Franc.new(10), five.times(2)
    assert_equal Franc.new(15), five.times(3)
  end
end
