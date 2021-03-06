class Money
  require 'dollar'
  require 'franc'

  # TODO: Rubyでのインスタンス変数のprivate化がわからないので一旦保留
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end

  def times(_multiplier)
    raise NotImplementedError
  end

  def equals(obj)
    (@amount == obj.amount) && (self.class == obj.class)
  end

  def self.dollar(amount)
    Dollar.new(amount)
  end

  def self.franc(amount)
    Franc.new(amount)
  end
end
