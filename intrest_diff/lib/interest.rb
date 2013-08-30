class Interest
  attr_accessor :principal, :time
  def initialize
    @principal, @time  = yield
    @rate = 10.0
  end
  def rate
    @rate/100    
  end
  def simple_interest
    principal * time * rate 
  end
  def compound_interest
    (principal * (1+rate) ** time) - principal
  end
  def diffrence_interest
    compound_interest - simple_interest
  end
end
