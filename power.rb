class Array
  def power(pow)
    for i in 0...size
    self[i] = self[i] ** pow
    end
    return self
  end
end
p [1,2,3].power(4)