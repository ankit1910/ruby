require_relative '../lib/integer.rb'
puts "enter number"
begin
  number = Integer(gets)
  raise Exception if number < 0
  p number.factorial
rescue Exception => e
  p "wrong value for input for finding the factorial"
end
