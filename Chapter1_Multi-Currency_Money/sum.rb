class Sum
  attr_reader :augend, :added

  def initialize(augend, added)
    @augend = augend
    @added  = added
  end

  def reduce(bank, to)
    Money.new(augend.amount + added.amount, to)
  end
end
