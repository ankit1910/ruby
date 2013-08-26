require_relative '../lib/integer.rb'
begin
  puts "Enter number to find out its factorial"
  input = Integer(gets.chomp)
  puts input.factorial
rescue ArgumentError
  puts "cant find factorial for string or special character"
rescue RuntimeError
  puts "cant find factorial for negative numbers"
end