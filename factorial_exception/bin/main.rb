require_relative '../lib/integer.rb'
class NegativeNumber < StandardError
end
class StringInput < StandardError
end
puts "enter number"
begin
  number = gets.chomp
  raise NegativeNumber if number.to_i < 0
  raise StringInput if number =~ /[a-z]/i
  raise if number !~ /[0-9]+/
  p number.to_i.factorial
rescue NegativeNumber
  p "Negative value for finding the factorial"
rescue StringInput
  p "String value for finding the factorial"
rescue Exception
  p "the input value is not correct"
end
