require_relative '../lib/integer.rb'
puts "enter number"
begin
  number = Integer(gets)
  raise "cant not take negative value to for finding factorial" if number < 0
  p number.factorial
  rescue Exception => e
  p e.message
end