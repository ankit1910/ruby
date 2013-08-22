class Integer
  def factorial
    raise NegativeNumber if self < 0
    raise StringInput if self == 0
    self == 1 ? 1 : self * (self - 1).factorial
  end
end