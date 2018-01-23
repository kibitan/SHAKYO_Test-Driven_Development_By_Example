require "minitest/autorun"
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'dollar'

class TestMoney < Minitest::Test
  def test_multiplication
    five = Dollar.new(5)
    five.time(2)
    assert_equal 10, five.amount
  end
end
