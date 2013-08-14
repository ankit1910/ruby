class Intrest
  @@rate = 10.0
  attr_reader :principal, :time
  def initialize
    @principal, @time  = yield
  end
  def simple_intrest
    (@principal * @time * @@rate)/100 
  end
  def compound_intrest
    (@principal * ((1+(@@rate.to_f/100)) ** @time)) - @principal
  end
  def diffrence_intrest
    compound_intrest - simple_intrest
  end
end
