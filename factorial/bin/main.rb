require_relative '../lib/integer.rb'
puts "Enter number to find out its factorial"
input = gets.chomp
number = input == '0' ? 1 : input.to_i
p (number > 0) ? number.factorial : "wrong input for factorial"