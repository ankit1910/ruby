class Integer
  def factorial
    raise RuntimeError if self < 0
    self <= 0 ? 1 : self * (self - 1).factorial
  end
end
