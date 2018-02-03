class Money
  # TODO: Rubyでのインスタンス変数のprivate化がわからないので一旦保留
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end

  def equals(obj)
    money = obj.clone
    @amount == money.amount
  end
end
