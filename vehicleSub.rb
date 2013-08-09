# super class Vehicle
class Vehicle
  def  initialize(name, price)
    @name = name
    @price = price    
  end
  def name
    @name
  end
  def price
    @price
  end
  def price=(newPrice)
    @price = newPrice
  end
end
# sub class bike with super class as Vehicle
class Bike < Vehicle
  def initialize(dealer, name, price)
    super(name, price)
    @dealer = dealer
  end
  def dealer
    @dealer
  end
end