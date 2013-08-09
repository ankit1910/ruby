class Customer
  @@acc = 0
  attr_reader   :name, :accountNum
  attr_accessor :balance
  def initialize (name,balance)
    @name = name
    @balance = balance
    @accountNum = @@acc
    @@acc += 1
  end
  public
  def deposit(amount)
    @balance += amount
  end
  def withdrawal(amount) 
    @balance -= amount
  end
end
