class Integer
  def prime_num
    p 2
    3.step(self, 2) do |element|
      flag = true
      divisor_limit = Math.sqrt(element).ceil
      (2..divisor_limit).each do |divisor|
        flag = false if element.modulo(divisor).zero?
      end
      p element if flag
    end 
  end
end
