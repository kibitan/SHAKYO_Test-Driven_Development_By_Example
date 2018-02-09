class Money
  attr_reader :amount

  def equals(money)
    amount == money.dup.amount
  end
  # NOTE:
  #  `assert_equal` will call #== method for comparison,
  #  make compatible with Java sample code
  alias == :equals
end
