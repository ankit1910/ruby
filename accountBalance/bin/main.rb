require_relative '../lib/customer.rb'
var = Customer.new("ankit",1000)
var1 = Customer.new("rahul",1000)
var2 = Customer.new("jaitn",1000)
p var, var1, var2
var.deposit(500)
var2.withdrawal(300)
var1.withdrawal(100)
p var, var1, var2
