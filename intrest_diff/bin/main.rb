require_relative '../lib/interest.rb'
obj = Interest.new {[10000.0, 4.0]}
p "simple interest is : #{obj.simple_interest}"
p "compound interest is : #{obj.compound_interest}"
p "diffrence in interest is : #{obj.diffrence_interest}"
