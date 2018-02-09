class Franc
  attr_reader :amount
  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    Franc.new(amount * multiplier)
  end

  def equals(franc)
    amount == franc.dup.amount
  end
  # NOTE:
  #  `assert_equal` will call #== method for comparison,
  #  make compatible with Java sample code
  alias == :equals
end
