require_relative '../lib/integer.rb'
require_relative '../lib/negative_number.rb'
require_relative '../lib/string_input.rb'
puts "enter number"
begin
  input = gets.chomp
  raise Exception if input.to_f != input.to_i
  number = (input =~ /^0+$/) ? 1 : input.to_i
  p number.factorial
rescue NegativeNumber
  p "Negative value for finding the factorial"
rescue StringInput
  p "String value for finding the factorial"
rescue Exception
  p "the input value is not correct"
end
