class Bionomial
  def pascal(num)
    (num + 1).times do |i|
      yield i, 1
    end
  end
end
