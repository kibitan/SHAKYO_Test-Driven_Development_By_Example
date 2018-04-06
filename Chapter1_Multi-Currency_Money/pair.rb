class Pair
  attr_reader :from, :to

  def initialize(from, to)
    @from = from
    @to   = to
  end

  def eql?(pair)
    @from == pair.from && @to == pair.to
  end

  # http://ruby-doc.org/core-2.5.0/Hash.html#class-Hash-label-Hash+Keys
  def hash
    @from.hash ^ @to.hash # XOR
  end

  def hash_code
    0
  end
end
