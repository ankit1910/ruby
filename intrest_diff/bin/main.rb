require_relative '../lib/intrest.rb'
obj = Intrest.new {[10000.0, 4.0]}
p "simple intrest is : #{obj.simple_intrest}"
p "compound intrest is : #{obj.compound_intrest}"
p "diffrence in intrest is : #{obj.diffrence_intrest}"
