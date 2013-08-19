require_relative "../lib/vehicle.rb"
class Bike < Vehicle
  attr_reader :dealer
  def initialize(dealer, name, price)
    super(name, price)
    @dealer = dealer
  end
  def to_s
    super + "\ndealer = #{ @dealer }"
  end
end
