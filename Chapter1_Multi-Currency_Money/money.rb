class Money
  attr_reader :amount, :currency

  class << self
    def dollar(amount)
      new(amount, 'USD')
    end

    def franc(amount)
      new(amount, 'CHF')
    end
  end

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def times(multiplier)
    self.class.new(amount * multiplier, currency)
  end

  def equals(money)
    amount == money.amount && self.currency == money.currency
  end
  # NOTE:
  #  `assert_equal` will call #== method for comparison,
  #  make compatible with Java sample code
  alias == :equals

  def plus(added)
    self.class.new(amount + added.amount, currency)
  end
end
