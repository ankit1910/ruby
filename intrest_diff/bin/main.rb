require_relative '../lib/interest.rb'
obj_array = []
obj_array << Interest.new { [10000.0, 4.0] }
obj_array << Interest.new { [20000.0, 2.0] }
obj_array.each do |object|
  puts "Details : Amount = '#{ object.principal }' and Time = '#{ object.time }' "
  puts "simple interest is : #{ object.simple_interest }"
  puts "compound interest is : #{ object.compound_interest }"
  puts "diffrence in interest is : #{ object.diffrence_interest }"
end
