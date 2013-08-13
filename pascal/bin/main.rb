require_relative '../lib/pascal.rb'
Pascal.pascal(6) do |i|
  x = 1
  0.upto(i) do |j|
    print x, " "
    x = x * (i - j) / (j + 1)
  end
end