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
var = Customer.new("ankit",1000)
puts var.accountNum
var1 = Customer.new("rahul",1000)
puts var.accountNum
var2 = Customer.new("jaitn",1000)
puts var.accountNum
var3 = Customer.new("sahil",1000)
puts var.accountNum

