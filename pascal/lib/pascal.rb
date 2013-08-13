module Pascal
  def self.pascal(num)
    (num+1).times do |i|
      yield(i)
      puts ""
    end
  end
end