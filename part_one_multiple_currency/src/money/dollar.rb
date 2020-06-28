class Dollar
  attr_accessor :amount

  def initialize(amount)
    self.amount = amount
  end

  def times(multiplier)
    self.amount = amount * multiplier
  end
end
