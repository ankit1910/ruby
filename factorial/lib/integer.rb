class Integer
  def factorial
    raise NegativeNumber if self < 0
    num = self == 0 ? 1 : (1..self).reduce(:*)
  end
end
