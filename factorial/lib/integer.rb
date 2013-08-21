class Integer
  def factorial
    output = 1
    for num in (1..self)
      output *= num
    end
    output
  end
end
