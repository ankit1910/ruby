require_relative '../lib/bionomial.rb'
bionomial = Bionomial.new
bionomial.pascal(6) do |i, x|
  0.upto(i) do |j|
    printf("%d ", x)
    x = x * (i - j) / (j + 1)
  end
  puts ""
end