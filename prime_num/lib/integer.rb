class Integer
  def prime_num
    p 2
    3.step(self, 2) do |element|
      p element if element.prime?
    end
  end
end
