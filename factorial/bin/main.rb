require_relative '../lib/integer.rb'
require_relative '../lib/negative_number.rb'
begin
  puts "Enter number to find out its factorial"
  input = Integer(gets.chomp)
  puts "FACTORIAL IS :"
  puts input.factorial
rescue ArgumentError => e 
  puts e.message
rescue NegativeNumber => e 
  puts e.message
end