class Interest
  RATE = 10.0
  def initialize
    @principal, @time  = yield
  end
  def simple_interest
    (@principal * @time * rate)/100 
  end
  def compound_interest
    (@principal * ((1+(rate/100)) ** @time)) - @principal
  end
  def diffrence_interest
    compound_interest - simple_interest
  end
  def rate
    RATE
  end
end
