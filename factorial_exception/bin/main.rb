require_relative '../lib/range.rb'
puts "enter number"
begin
  number = gets.to_i
  raise RuntimeError if number < 1
  p (1..number).factorial
  rescue RuntimeError
    p "number if either 0 or negative"
end