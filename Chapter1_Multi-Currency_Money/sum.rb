class Sum
  attr_reader :augend, :added

  def initialize(augend, added)
    @augend = augend
    @added  = added
  end

  def reduce(bank, to)
    amount = augend.reduce(bank, to).amount + added.reduce(bank, to).amount
    Money.new(amount, to)
  end

  def plus(added)
    Sum.new(self, added)
  end

  def times(multiplier)
    Sum.new(@augend.times(multiplier), @added.times(multiplier))
  end
end
