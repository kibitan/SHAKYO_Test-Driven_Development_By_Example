class Money
  attr_reader :amount

  class << self
    def dollar(amount)
      Dollar.new(amount)
    end

    def franc(amount)
      Franc.new(amount)
    end
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
