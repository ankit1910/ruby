class Vehicle
  attr_writer :price
  def initialize(name, price)
    @name = name
    @price = price
  end
  def to_s
    "\nName = #{ @name }\nPrice = #{ @price }"
  end
end