class Array
  def power(pow)
    self.map!{|num| num ** pow }
  end
end
p [2, 4, 5].power(3) 