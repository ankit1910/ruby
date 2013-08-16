require 'prime'
require_relative '../lib/integer.rb'
print "enter number upto u want prime"
number = gets.to_i
number.prime_num if number >= 2
