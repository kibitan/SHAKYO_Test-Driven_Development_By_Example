class Money
  attr_reader :amount

  def equals(money)
    amount == money.dup.amount && self.class == money.class
  end
  # NOTE:
  #  `assert_equal` will call #== method for comparison,
  #  make compatible with Java sample code
  alias == :equals
end
