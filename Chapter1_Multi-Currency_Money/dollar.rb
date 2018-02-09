class Dollar
  attr_reader :amount
  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    Dollar.new(amount * multiplier)
  end

  def equals(dollar)
    amount == dollar.dup.amount
  end
  # NOTE:
  #  `assert_equal` will call #== method for comparison,
  #  make compatible with Java sample code
  alias == :equals
end
