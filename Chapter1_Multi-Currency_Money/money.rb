class Money
  attr_reader :amount, :currency

  class << self
    def dollar(amount)
      Dollar.new(amount, 'USD')
    end

    def franc(amount)
      Franc.new(amount, 'CHF')
    end
  end

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def time
    raise NotImplementedError
  end

  def equals(money)
    amount == money.dup.amount && self.class == money.class
  end
  # NOTE:
  #  `assert_equal` will call #== method for comparison,
  #  make compatible with Java sample code
  alias == :equals
end

require 'dollar'
require 'franc'
