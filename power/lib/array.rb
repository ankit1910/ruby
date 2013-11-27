class Array
  def power(exponent)
    self.map! do |element|
      (element.is_a? Numeric) ? element **= exponent : break 
    end
  end
end
 #edfsewffdb