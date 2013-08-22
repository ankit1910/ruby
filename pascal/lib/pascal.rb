module Pascal
  def self.pascal(num)
    (num + 1).times do |i|
      x = 1
      0.upto(i) do |j|
        yield(x)
        x = x * (i - j) / (j + 1)
      end
      puts ""
    end
  end
end
