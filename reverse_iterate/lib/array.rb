class Array
  def reverse_iterate
    for index in 1..self.size
      yield self[-index]
    end
  end
end
