# super class Vehicle
class Vehicle
  attr_reader :name
  attr_accessor :price
  def  initialize(name, price)
    @name = name
    @price = price    
  end
end
# sub class bike with super class as Vehicle
class Bike < Vehicle
  attr_reader :dealer
  def initialize(dealer, name, price)
    super(name, price)
    @dealer = dealer
  end
end
